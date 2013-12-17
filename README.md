# UnitValidator

UnitValidator provides a rails model validator using ruby-units to detect valid units of measurement 

### Installation

Just add this to your Gemfile:

    gem 'unit_validation'

and run

    bundle install

### Usage

Put something like this in your models:

    validates :height, :unit => true
    validates :count, :unit => {:allowed_types => :unitless}
    validates :width, :unit => {:allowed_types => [:mass, :length]}

### Error messages

The error message upon failure can be overridden by passing the option `message` to the unit validation:

    validates :quantity, :unit => {:message => 'please be so kind as to enter a physical quantity'}

If not supplied, a localised message is shown.
Translations are kept in [localeapp#6170](http://www.localeapp.com/projects/6170) - please feel free to
add a new translation or correct something.

