require 'iptime_rebooter/rebooter'
require 'sinatra/base'
require 'tilt/erb'

RSpec.describe IptimeRebooter::Rebooter do
  it 'works' do
    class FakeApp < Sinatra::Base
      get '/' do
        erb :'index.html'
      end

      get '/login/login.cgi' do
        erb :'login.cgi'
      end

      get '/sess-bin/login_session.cgi' do
        erb :'login_session.cgi'
      end

      post '/sess-bin/login_handler.cgi' do
        ''
      end

      get '/sess-bin/timepro.cgi' do
        ''
      end
    end
    allow(subject).to receive(:base) { '' }
    expect(subject).to receive(:new_session) do
      Capybara::Session.new(:poltergeist_iptimerebooter, FakeApp.new)
    end
    subject.reboot
  end
end
