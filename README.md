# Omniauth::Coinbase

`OmniAuth::Strategies::Coinbase` is an OmniAuth strategy for authenticating to
coinbase.com with OAuth2. Read detailed information about the coinbase.com
implementation of OAuth2
[here](https://coinbase.com/docs/api/authentication#collapse2)

## Installation

Add this line to your application's Gemfile:

    gem 'omniauth-coinbase', :git => 'git://github.com/prudhvi/omniauth-coinbase.git'

And then execute:

    $ bundle


## Usage

To get started you will need to register an OAuth Consumer in your
coinbase.com account
[here](https://coinbase.com/oauth/applications)

Here's a quick example, adding the middleware to a Rails app in
`config/initializers/omniauth.rb`:

```ruby
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :coinbase, ENV['COINBASE_CLIENT_ID'], ENV['COINBASE_CLIENT_SECRET']
end
```
You can then implement your authentication as usual with OmniAuth as
shown in the excellent [Railscast
241](http://railscasts.com/episodes/241-simple-omniauth)


##Authentication Hash

Here's an example *Authentication Hash* available in
`request.env['omniauth.auth']`:

```ruby
{"provider"=>"coinbase",
 "uid"=>"some-uid",
 "info"=>
  {"name"=>"New User",
   "email"=>"foo@bar.com",
   "balance"=>{"amount"=>"0.00000000", "currency"=>"BTC"}},
 "credentials"=>
  {"token"=>"...",
   "refresh_token"=>"...",
   "expires_at"=>1388019008,
   "expires"=>true},
 "extra"=>
  {"raw_info"=>
    {"id"=>"id",
     "name"=>"New User",
     "email"=>"foo@bar.com",
     "pin"=>nil,
     "time_zone"=>"Pacific Time (US & Canada)",
     "native_currency"=>"USD",
     "buy_level"=>0,
     "sell_level"=>0,
     "balance"=>{"amount"=>"0.00000000", "currency"=>"BTC"},
     "buy_limit"=>{"amount"=>"0.00000000", "currency"=>"BTC"},
     "sell_limit"=>{"amount"=>"0.00000000", "currency"=>"BTC"}}}}

```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
