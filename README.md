# NoLimits

An active record extension for active record 3 and 4. This gem makes has_many associations with limits and has_one associations prettier.

## Installation

Add this line to your application's Gemfile:

```ruby
  gem 'no_limits'
```

And then execute:

```shell
  $ bundle
```

Or install it yourself as:

```shell
  $ gem install no_limits
```

## Usage

Rather than using different method names for `has_many` and `has_one` associations, and rather than specifying a limit for those associations, the idea is to solely rely on the English language to figure out what kind of a parent association is needed by simply passing a number to a method called `has`.

Instead of the verbose

```ruby
  has_many :associations, limit: 3
```

you can simply write

```ruby
  has 3, :assocations
```

You can append any options as you normally would, like

```ruby
  has 3, :assocations, dependent: :destroy, as: :watchable
```

That's it! It also works with has_one associations like so:

```ruby
  has 1, :association
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## Thanks
...to [fvonx](https://github.com/fvonx) and [metafoo](https://github.com/metafoo) for the inspiration.
