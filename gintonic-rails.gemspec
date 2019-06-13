# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

require 'gintonic-rails/version'

Gem::Specification.new do |gem|
  gem.name          = "gintonic-rails"
  gem.version       = Gintonic::VERSION
  gem.authors       = ["Simplelogica", "Victor Ortiz"]
  gem.email         = ["kespers@gmail.com"]
  gem.homepage      = "https://github.com/simplelogica/gintonic-rails"
  gem.summary       = "Gintonic Front-End toolbox"
  gem.description   = %q{Gintonic is a Sass mixins collection, include normalize 2.1 modified, clearfix, font-face helper and CSS3 properties with vendor prefixes Webkit, Firefox > 3.5, Opera and IE > 8.}

  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.require_paths = ["lib"]

  gem.add_runtime_dependency("sass", "~> 3.4")
  gem.add_dependency("bourbon", ">= 4.2")

  gem.add_development_dependency 'rails', '>= 4.1.5', '< 6.1'
end
