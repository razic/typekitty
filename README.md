# typekitty ![](https://travis-ci.org/razic/typekitty.svg?branch=dev)

> Ruby client for the Adobe [Typekit] API

## Installation

```sh
$ gem install typekitty
```

## Usage

You can access the [Typekit] API directly within Ruby or from your terminal.

To access the API within Ruby, continue reading; otherwise read the [CLI]
section.

### Ruby

The API requires Ruby 1.9.3 or greater.

#### Common Tasks

* [Listing Your Kits]
* [Getting Information About the Draft Version of a Kit]

#### Require the Gem

```ruby
require 'typekitty'
```

#### Authenticating Requests

The `ENV['TYPEKIT_TOKEN']` variable represents a Typekit API Token, which you
may obtain on the [tokens] page.

The variable is used to authenticate requests.  It must be set in order for
your requests to authenticate properly.

An example could be:

```ruby
ENV['TYPEKIT_TOKEN'] = 'my_secret_token'
```

#### Kits

##### Listing Your Kits

```ruby
Typekitty:Kit.all
=> [<Typekitty::Kit @id='ay12s3'>]
```

##### Getting Information About The Draft Version of a Kit

```ruby
Typekitty::Kit.find 'ay12s3'
=> <Typekitty::Kit @id='ay12s3'>
```

### CLI

The `typekitty` gem includes a command-line interface for accessing the [Typekit]
API.

For usage and help:

```sh
$ typekitty help
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
[Listing Your Kits]: #listing-your-kits
[Getting Information About the Draft Version of a Kit]: #getting-information-about-the-draft-version-of-a-kit
