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

* [Listing Kits]
* [Getting Information About the Draft Version of a Kit]
* [Listing Font Libraries]

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

##### Listing Kits

```ruby
Typekitty::Kit.all
=> [#<Typekitty::Kit analytics=false badge=true domains=["viralkitty.com"] families=[{"id"=>"llxb", "name"=>"Museo Slab", "slug"=>"museo-slab", "css_names"=>["museo-slab"], "css_stack"=>"\"museo-slab\",serif", "subset"=>"default", "variations"=>["n3", "i3", "n7", "i7"]}] id="gec4ttz" name="viralkitty">]
```

##### Getting Information About The Draft Version of a Kit

```ruby
Typekitty::Kit.find 'gec4ttz'
=> #<Typekitty::Kit analytics=false badge=true domains=["viralkitty.com"] families=[{"id"=>"llxb", "name"=>"Museo Slab", "slug"=>"museo-slab", "css_names"=>["museo-slab"], "css_stack"=>"\"museo-slab\",serif", "subset"=>"default", "variations"=>["n3", "i3", "n7", "i7"]}] id="gec4ttz" name="viralkitty">
```

#### Libraries

##### Listing Font Libraries

```ruby
Typekitty::Library.all
=> [#<Typekitty::Library id="trial" link="/api/v1/json/libraries/trial" name="Trial Library">, #<Typekitty::Library id="personal" link="/api/v1/json/libraries/personal" name="Personal Library">, #<Typekitty::Library id="full" link="/api/v1/json/libraries/full" name="Full Library">]
```

### CLI

The `typekitty` gem includes a command-line interface for accessing the [Typekit]
API.

For usage and help:

```sh
$ typekitty
Commands:
  typekitty help [COMMAND]            # Describe available commands or one specific command
  typekitty kit KIT_ID --token=TOKEN  # Get information about the draft version of a kit
  typekitty kits --token=TOKEN        # Lists kits
  typekitty libraries                 # Lists font libraries
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

### Versioning

We use [Semantic Versioning]; please read before cutting new releases.

### Fixtures

The specs use [VCR] cassettes to record and replay actual HTTP requests from
the [Typekit] API. If you're unfamiliar with [VCR], then please read it's
documentation before writing tests.

## License

MIT

[Typekit]: http://typekit.com
[CLI]: #cli
[Bundler]: http://bundler.io
[tokens]: https://typekit.com/account/tokens
[Listing Kits]: #listing-kits
[Listing Font Libraries]: #listing-font-libraries
[Getting Information About the Draft Version of a Kit]: #getting-information-about-the-draft-version-of-a-kit
[Semantic Versioning]: http://semver.org
[VCR]: https://github.com/vcr/vcr
