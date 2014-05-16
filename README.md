# typekitty

> Ruby client for the Adobe [Typekit] API

## Installation

```sh
$ [sudo] gem install typekitty
```

## Usage

You can access the [Typekit] API directly within Ruby or from your terminal.

To access the API within Ruby, continue reading; otherwise read the [CLI]
section.

### Ruby

#### Require the Gem

```ruby
require 'typekitty'
```

#### Initialize the API Client

Before you can access the API, you need to new up a `Typekitty::Client`
instance:

```ruby
@typekitty = Typekitty::Client.new ENV['TYPEKIT_TOKEN']
```

The `ENV['TYPEKIT_TOKEN']` represents a Typekit API Token, which you may obtain
on the [tokens] page.

#### Kits

##### Listing your Kits

```ruby
@typekitty.kits
=> ['ay12s3']
```

### CLI

The `typekitty` gem includes a command-line interface for accessing the [Typekit]
API.

To see what it can do:

```sh
$ typekitty --help
```

## Development

### Install the Dependencies

Use [Bundler] to install the dependencies:

```sh
$ bundle install
```

### Running the Tests

```sh
$ rspec spec
```

## License

MIT

[Typekit]: http://typekit.com
[CLI]: #cli
[Bundler]: http://bundler.io
[tokens]: https://typekit.com/account/tokens
