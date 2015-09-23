class Gintonic::StylesGenerator < Rails::Generators::Base
  source_root File.expand_path('../templates', __FILE__)

  def create_structure
    create_file "app/assets/stylesheets/base/_layout.scss", ""
    create_file "app/assets/stylesheets/base/_typography.scss", ""
    create_file "app/assets/stylesheets/base/_variables.scss", ""
    create_file "app/assets/stylesheets/libs/.keep", ""
    create_file "app/assets/stylesheets/pages/.keep", ""
    create_file "app/assets/stylesheets/partials/.keep", ""
  end

  def copy_application_css
    template 'application.css',
      File.join(destination_root, 'app/assets/stylesheets/application.css')
  end

  def install_quite_assets
    begin
      gem 'shut_up_assets', group: :development
    rescue Errno::ENOENT
      say_status("warning", "It seems you don't have any Gemfile. I hope you are in the dummy app.", :yellow)
    end
  end
end
