# Gintonic::Rails

A lightweight sass mixins library to make easy front-end rails developers.

## Installation

Just add this line to the assets group in your application's Gemfile:

    gem 'gintonic-rails'

And then execute:

    $ bundle install

You are ready to import gintonic at the beginnign of application.css.scss (all is written with scss syntax):

    @import "gintonic";

## Usage

**Reset:**  
The importation includes by default normalize.css v2.1.2 http://git.io/normalize.  
You can also import in any other file:  

    @include normalize;

**CSS3 mixins:**  
There is a global funtion to add vendor prefixes  
Example:  

    element {
      @include prefixer(border-radius, $values, moz o webkit w3c);
    }

Default prefixes:  
 - border-radius
 - box-shadow
 - transform
 - transition
 - transition
 - transition-delay
 - transition-duration

Example:

    element {
      @include box-shadow(inset 0 0 3px black, 1px 1px 0 white);
    }

**Structure mixins:**  
Cross browser block styles with support >IE8, FF, Chrome, Opera  
 - clearfix
 - inline-block

**Tipography mixins:**
 - font-face: FontFace declaration mixin
 - hover-link: Disable link underline and activate it on hover
 - hide-text: Hide text and show a image instead

Examples:  

    @include font-face("family-name", "file-name");
    @include font-face("family-name", "variation-file-name", bold);

    element {
        @include hover-link();
    }
    element {
        @include hide-text(image-url('bg.png') no-repeat 0 0, 20px, 20px);
    }

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

