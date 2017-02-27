# Status
master: [![Build Status](https://travis-ci.org/ermaker/iptime_rebooter.svg?branch=master)](https://travis-ci.org/ermaker/iptime_rebooter)

develop: [![Build Status](https://travis-ci.org/ermaker/iptime_rebooter.svg?branch=develop)](https://travis-ci.org/ermaker/iptime_rebooter)

# IptimeRebooter

ipTIME routers are great. But some cheap models are occasionally down.
My one is also down in 24 ~ 48 hours.

IptimeRebooter will help to reboot your router automatically so you do not need to reboot manually and you can have a rest.

## Usage

### Docker

Just run with environment:

```sh
$ docker run --rm -e ROUTER_URL=[OPTIONAL] -e USERNAME=[YOUR_USERNAME] -e PASSWORD=[YOUR_PASSWORD] ermaker/iptime_rebooter # Reboot your router right now
```

Or with an env file:

```sh
$ docker run --rm --env-file=.env ermaker/iptime_rebooter # Reboot your router right now
```

.env:

```
ROUTER_URL=[OPTIONAL]
USERNAME=[YOUR_USERNAME]
PASSWORD=[YOUR_PASSWORD]
```

### Gem

Add this line to your application's Gemfile:

```ruby
gem 'iptime_rebooter'
```

And then execute:

```sh
$ bundle
```

Or install it yourself as:

```sh
$ gem install iptime_rebooter
```

Write this into your code:

```ruby
require 'iptime_rebooter/rebooter'

# ...

ENV['ROUTER_URL']='[OPTIONAL]'
ENV['USERNAME']='[YOUR_USERNAME]'
ENV['PASSWORD']='[YOUR_PASSWORD]'

IptimeRebooter::Rebooter.new.reboot # Reboot your router right now
```

Or run on command line:

```sh
$ export ROUTER_URL=[OPTIONAL]
$ export USERNAME=[YOUR_USERNAME]
$ export PASSWORD=[YOUR_PASSWORD]
$ bundle exec rake reboot # Reboot your router right now
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/ermaker/iptime_rebooter.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

