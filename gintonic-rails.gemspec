# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'gintonic-rails/version'

Gem::Specification.new do |gem|
  gem.name          = "gintonic-rails"
  gem.version       = Gintonic::Rails::VERSION
  gem.authors       = ["Victor Ortiz"]
  gem.email         = ["kespers@gmail.com"]
  gem.homepage      = "https://github.com/simplelogica/gintonic-rails"
  gem.summary       = "Gintonic Front-End toolbox"
  gem.description   = %q{Gintonic is a Sass mixins collection, include normalize 2.1 modified, clearfix, font-face helper and CSS3 properties with vendor prefixes Webkit, Firefox > 3.5, Opera and IE > 8.}
  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency "railties", ">= 4.0.0"
  gem.add_dependency 'sass', '>= 3.2.0'
end
