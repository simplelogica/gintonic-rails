module Gintonic
  module Rails
    class Engine < ::Rails::Engine
      initializer 'gintonic.assets.precompile' do |app|
        %w(stylesheets javascripts fonts images).each do |sub|
          app.config.assets.paths << root.join('assets', sub).to_s
        end
      end
    end
  end
end
