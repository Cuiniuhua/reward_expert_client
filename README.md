# RewardExpert

This is an API client for  RewardExpert services.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'reward_expert'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install reward_expert

## Usage

For initial config you may do the following but this is not necessary

```ruby
RewardExpert.configure do |config|
  config.api_prefix = 'api/v2' # default 'api/v2'
  config.host = 'https://static.rewardexpert.com' # default 'https://static.rewardexpert.com'
  config.log_response = false # if set to true http trafic will be dosplayed in logs, default false
  config.auth = %w(user password) # user and password for Basic authentication if needed. Default nil
end
```

if you use Rails add above strings to the `config/initializers/reward_expert.rb` file

#### Initialize client
```ruby
RewardExpert::Cards.new
````
#### Get cards
```ruby
client = RewardExpert::Cards.new
client.cards # Returns an array of cards 
client.cards_as_hash # Returns a hash of cards, where each key is a card id
```
## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/RewardExpertINC/reward_expert_client. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

