# Gintonic::Rails

A lightweight sass mixins library to make easy front-end rails developers.

## Installation

Just add this line to the assets group in your application's Gemfile:

    gem 'gintonic-rails'

And then execute:

    $ bundle install

You are ready to import gintonic at the beginnign of application.css.scss (all is written with scss syntax):

```
@import "gintonic";
```

## Usage

### Reset:

The importation includes by default a modern reset (Dom Limpio)[https://github.com/carloscabo/dom-limpio/].

```
@import "dom-limpio/variables";
@import "dom-limpio/layout";
@import "dom-limpio/type";
@import "dom-limpio/forms";
```







## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

