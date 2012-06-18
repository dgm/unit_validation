$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "unit_validation/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "unit_validation"
  s.version     = UnitValidation::VERSION
  s.authors     = ["David Morton"]
  s.email       = ["mortonda@dgrmm.net"]
  s.homepage    = "http://www.github.com/dgm"
  s.summary     = "A model validation class to work in hand with ruby-units"
  s.description = "A model validation class to work in hand with ruby-units"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.0"
  s.add_dependency "ruby-units"

  s.add_development_dependency "sqlite3"
end
