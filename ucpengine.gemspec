$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "ucpengine/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "ucpengine"
  s.version     = Ucpengine::VERSION
  s.authors     = ["johnvehr"]
  s.email       = ["johnvehr@yahoo.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of Ucpengine."
  s.description = "TODO: Description of Ucpengine."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.7.1"

  s.add_dependency "bcrypt", "~> 3.1.7"
  s.add_dependency "sass-rails", "~> 5.0"

  s.add_dependency "jquery-rails"
  s.add_dependency "jquery-ui-rails"
  s.add_dependency "font-awesome-rails"
  s.add_dependency "autoprefixer-rails"
  s.add_dependency "simple_form", "~>3.1.0"

  s.add_dependency "pygments.rb"
  s.add_dependency "redcarpet"

  s.add_development_dependency "pg"
end
