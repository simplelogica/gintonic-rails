require 'gintonic-rails/version'
require 'bourbon'
require 'dom_limpio'

unless defined?(Sass)
  require 'sass'
end

module Gintonic
  if defined?(Rails) && defined?(Rails::Engine)
    class Engine < ::Rails::Engine
      require 'gintonic-rails/engine'
    end
  else
    gintonic_path = File.expand_path("../../app/assets/stylesheets", __FILE__)
    ENV["SASS_PATH"] = [ENV["SASS_PATH"], gintonic_path].compact.join(File::PATH_SEPARATOR)
  end
end
