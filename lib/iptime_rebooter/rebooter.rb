require 'phantomjs/poltergeist'

module IptimeRebooter
  # Rebooter
  #
  # IptimeRebooter::Rebooter.new.reboot
  class Rebooter
    Capybara.register_driver(:poltergeist_iptimerebooter) do |app|
      Capybara::Poltergeist::Driver.new(
        app,
        phantomjs: Phantomjs.path,
        js_errors: false
      )
    end

    def base
      'http://192.168.0.1'
    end

    def new_session
      Capybara::Session.new(:poltergeist_iptimerebooter)
    end

    def do_with
      session = new_session
      begin
        yield session
      ensure
        session.driver.quit
      end
    end

    def login(session)
      session.visit base
      session.fill_in 'username', with: ENV['USERNAME']
      session.fill_in 'passwd', with: ENV['PASSWORD']
      session.find(:css, '#submit_bt').click
    end

    def reboot_(session)
      session.visit base + '/sess-bin/timepro.cgi?' \
        'tmenu=background&smenu=reboot&commit=reboot'
    end

    def reboot
      do_with do |session|
        login(session)
        reboot_(session)
      end
    end
  end
end
