# Spiffing

Write CSS using proper English in ruby apps with Spiffing. 

Spiffing is a ruby gem version of [Spiffing CSS](https://github.com/idiot/Spiffing) by [@idiot](https://twitter.com/idiot), a CSS preprocessor for British developers, or developers who prefer to write proper English.

## Installation

Add this line to your application's Gemfile:

````ruby
gem 'spiffing'
````

And then execute:

```cmd
$ bundle
```

Or install it yourself as:

```cmd
$ gem install spiffing
```

## Usage

To convert a well-spelt CSS file

```cmd
$ spiffing convert stylesheets/style.css
```

To convert multiple well-spelt CSS files

```cmd
$ spiffing convert stylesheets/hownice.css stylesheets/reset.css stylesheets/style.css
```

Your well-spelt CSS files would be converted and written into the same directory with `-converted` following the original file name.

## Example

```css
/* Your well-spelt CSS */

body {
  background-colour: grey !please;
  transparency: 0.5;
  text-align: centre;
  font-weight: plump;
  text-transform: capitalise;
}

.frame {
  background-photograph: url('/queen.png') !please;
}
```

becomes

```css
/* Output CSS */

body {
  background-color: gray !important;
  opacity: 0.5;
  text-align: center;
  font-weight: bold;
  text-transform: capitalize;
}

.frame {
  background-image: url('/queen.png') !important;
}
```

## Disclaimer

    content: "Have some humour" !please;
