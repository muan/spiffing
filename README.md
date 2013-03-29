# Spiffing gem

Write CSS using proper English in ruby with Spiffing gem. Spiffing gem is a ruby gem version of [Spiffing CSS](http://spiffingcss.com/) by [@idiot](https://twitter.com/idiot), a CSS preprocessor for British developers in the wild.

## Installation

Add this line to your application's Gemfile:

    gem 'spiffing'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install spiffing

## Usage

To convert a well-spelt CSS file

    spiffing convert stylesheets/style.css

To convert multiple well-spelt CSS files

    spiffing convert stylesheets/hownice.css stylesheets/reset.css stylesheets/style.css

Your well-spelt CSS files would be converted and written into the same directory with `-converted` following the original file name, i.e. by running the command `spiffing convert /stylesheets/hownice.css`, a `/stylesheets/hownice-converted.css` will be created.