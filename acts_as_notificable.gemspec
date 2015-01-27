$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "acts_as_notificable/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "acts_as_notificable"
  s.version     = ActsAsNotificable::VERSION
  s.authors     = ["Marcio Junior"]
  s.email       = ["marciojunior1991@gmail.com"]
  s.homepage    = "https://github.com/marcioj/acts_as_notificable"
  s.summary     = "Add notifications for ActiveRecord objects"
  s.description = "Add notifications for ActiveRecord objects"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.1.4"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails", "~> 3.1.0"
  s.add_development_dependency "ammeter", "~> 1.1.2"
  s.add_development_dependency "shoulda-matchers", "~> 2.7.0"
  s.add_development_dependency "pry"
  s.add_development_dependency 'database_cleaner'
end
