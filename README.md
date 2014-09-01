# OmniAuth Simple In/Out
[![Gem Version](https://badge.fury.io/rb/omniauth-simple-in-out.png)](http://badge.fury.io/rb/omniauth-simple-in-out)

This gem contains the [Simple In/Out](https://www.simpleinout.com) [APIv2](https://www.simpleinout.com/developers) [OAuth2](http://oauth.net/2/) strategy for [OmniAuth](https://github.com/intridea/omniauth).

## Installation

Add this line to your application's Gemfile:

```ruby
gem "omniauth-simple-in-out"
```

And then execute:

```bash
$ bundle
```

Or if you like to do things the hard way, then install it manually with:

```bash
$ gem install omniauth-simple-in-out
```

## Usage
To integrate with your existing OmniAuth setup you will need to do the following depending on your situation. Read the OmniAuth docs for detailed instructions: https://github.com/intridea/omniauth

### Rails
If you are using OmniAuth by itself then you will need a `config/initializers/omniauth.rb` file with contents similar to the following:

```ruby
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :simple_in_out, ENV["SIMPLE_IN_OUT_ID"], ENV["SIMPLE_IN_OUT_SECRET"]
end
```

If you are using OmniAuth with Devise then you will need to instead put this coniguration in the `config/initializers/devise.rb`, like so:

```ruby
Devise.setup do |config|
  ### Lots of other code and comments ###
  
  # ==> OmniAuth
  # Add a new OmniAuth provider. Check the wiki for more information on setting
  # up on your models and hooks.
  config.omniauth :simple_in_out, ENV["SIMPLE_IN_OUT_ID"], ENV["SIMPLE_IN_OUT_SECRET"]
  
  ### Even more code and comments ###
end
```

Remember that both of these configurations will require you to use some method to load in the `ENV` variables from a `.env` or `secrets.yml` file, [here](https://github.com/bkeepers/dotenv) is one solution. [Forman](https://github.com/ddollar/foreman) does this for you by default.


## Contributing

1. Fork it ( https://github.com/[my-github-username]/omniauth-simple-in-out/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request


## License

The MIT License (MIT)

Copyright (c) 2014 [Codelation](http://codelation.com)

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
