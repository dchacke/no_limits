# NoLimits

An active record extension for active record 3 and 4. This gem makes has_many associations with limits and has_one associations prettier.

## Installation

Add this line to your application's Gemfile:

    gem 'no_limits'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install no_limits

## Usage

Instead of the verbose

    has_many :associations, limit: 3

you can simply write

    has 3, :assocations

You can append any options as normally, like

    has 3, :assocations, dependent: :destroy

That's it! It also works with has_one associations like so:

    has 1, :association

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
