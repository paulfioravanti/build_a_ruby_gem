# SoActive

SoActive is a Rubygem to scope active posts in an ActiveRecord-based application.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'so_active'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install so_active

## Usage

### Include the `SoActive::Scopes` module

```ruby
class Post < ActiveRecord::Base
  extend SoActive::Scopes
end
```

### Use the AR scope:

```ruby
Post.active #=> Returns back posts where `active: true`
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/[my-github-username]/so_active/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
