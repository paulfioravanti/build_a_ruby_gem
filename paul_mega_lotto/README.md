# PaulMegaLotto

My sandbox for the MegaLotto gem created in the
[Learn to Build a Ruby Gem book](http://brandonhilkert.com/books/build-a-ruby-gem/).

### Notes

- In order to push to Rubygems, you need to make an account there first, then
follow the directions to [here](http://guides.rubygems.org/make-your-own-gem/#your-first-gem)
to set up a `~/.gem/credentials` file.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'paul_mega_lotto'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install paul_mega_lotto

## Usage

```ruby
PaulMegaLotto::Drawing.new.draw => [23, 2, 12, 4, 3, 26]
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/[my-github-username]/mega_lotto/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
