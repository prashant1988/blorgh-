$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "blorgh/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "blorgh"
  s.version     = Blorgh::VERSION
  s.authors     = ["prashant"]
  s.email       = ["prashant1988mishra@gmail.com"]
  s.homepage    = "https://github.com/prashant1988/blorgh"
  s.description = "Its Rails moutable engine for bloging application."
  s.summary     = s.description
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.1.8"
  s.add_dependency "devise"

  s.add_development_dependency "sqlite3"
end
