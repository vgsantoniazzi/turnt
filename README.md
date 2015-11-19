## Welcome to Turnt

Test if an attribute was setted.

## Getting Started

From rubygems:

```ruby
gem install turnt
```

Gemfile

```ruby
gem "turnt"
```


## Usage

How to use
```ruby
class Organization
  include Turnt

  attr_accessor :name, :employes
end
```

So you can call:

```ruby
tux = Organization.new
tux.has_name? # => false
tux.has_employes? # => false
```

Now, I will set values to name

```ruby
tux = Organization.new
tux.name = "Tux!"
tux.has_name? # => true
tux.has_employes? # => false
```

This works with methods!

## Contributing

I :heart: Open source!

[Follow github guides for forking a project](https://guides.github.com/activities/forking/)

[Follow github guides for contributing open source](https://guides.github.com/activities/contributing-to-open-source/#contributing)

## Code Status

[![Build Status](https://travis-ci.org/vgsantoniazzi/turnt.svg?branch=master)](https://travis-ci.org/vgsantoniazzi/turnt)

## License

Gem is released under the [MIT license](http://opensource.org/licenses/MIT).
