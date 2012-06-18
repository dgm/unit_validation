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

