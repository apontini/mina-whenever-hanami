# Mina::Whenever::Hanami

This is a whenever plugin for [mina](https://github.com/mina-deploy/mina), adapted for [Hanami](https://hanamirb.org/) ruby framework.
This gem was developed starting from [d4be4st mina-whenever](https://github.com/mina-deploy/mina-whenever) gem, huge thanks to him!

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'mina-whenever-hanami'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install mina-whenever-hanami

## Usage

in `deploy.rb`

    require 'mina/whenever/hanami'

    set :hanami_env,    '<your-env>'

    task deploy: :environment do
      deploy do
        ...
        on :launch do
          invoke :'whenever:update'
        end
      end
    end

## Configuration

These are the settings you can set:

    set :whenever_name # default: "#{domain}_#{hanami_env}"

## Maintenance and Contribution
I'll be rarely maintaining this source code due to lack of time, but i will do as much as i can to resolve any open issues.
If you want to contribute, feel free to fork it, branch it and to create a pull request.
