require 'bourbon'

module Gintonic
  module Rails
    class Engine < ::Rails::Engine
      isolate_namespace Gintonic

      initializer 'gintonic.assets.precompile' do |app|
        %w(stylesheets javascripts fonts images).each do |dir|
          app.config.assets.paths << root.join('assets', dir).to_s
        end
      end
    end
  end
end
