# RailsViewHelpers
Simple set of Rails View Helpers.
This gem includes 'active_link_to' and 'phoner'

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rails_view_helpers'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rails_view_helpers

## Usage
```
ext_link_to 'twitter.com/granitweet'
=> <a href="http://twitter.com/granitweet" target="_blank">twitter.com/granitweet</a>

ext_link_to 'https://twitter.com/granitweet'
=> <a href="https://twitter.com/granitweet" target="_blank">https://twitter.com/granitweet</a>

phone_link_to '9213467823'
=> <a href="tel:+79213467823"><i>+7 (921)</i>346 7823</a>

phone_link_to '1234567'
=> <a href="tel:+78121234567"><i>+7 (812)</i>123 4567</a>
```
To change default codes use
```
Phoner::Phone.default_country_code = '7'
Phoner::Phone.default_area_code = '812'
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/rails_view_helpers/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
