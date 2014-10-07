# EenieMeenie

Adds the `#eenie_meenie` method for randomized selection to all enumerables.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'eenie_meenie'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install eenie_meenie

## Usage

```ruby
array = %(josh erin sandy jason mary)

array.eenie_meenie
# => "josh"

array.eenie_meenie(picker: :my_mother)
# => "mary"

array.eenie_meenie(picker: :my_mother, exclusion: true)
# => "erin"
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/eenie_meenie/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Credits

Inspired by [@laserlemon](https://www.github.com/laserlemon)'s [fair_dice_roll](https://www.github.com/laserlemon/fair_dice_roll).
