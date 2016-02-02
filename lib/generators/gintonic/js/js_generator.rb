class Gintonic::JsGenerator < Rails::Generators::Base
  source_root File.expand_path('../templates', __FILE__)

  def create_structure
    create_file "app/assets/javascripts/libs/.keep", ""
    create_file "app/assets/javascripts/modules/.keep", ""
    create_file "app/assets/javascripts/blocks/.keep", ""
  end

  def copy_ready_js
    template 'ready.js',
      File.join(destination_root, 'app/assets/javascripts/ready.js')
  end

  def copy_application_js
    template 'application.js',
      File.join(destination_root, 'app/assets/javascripts/application.js')
  end

  def install_jquery_turbolinks
    begin
      gem 'jquery-turbolinks'
    rescue Errno::ENOENT
      say_status("warning", "It seems you don't have any Gemfile. I hope you are in the dummy app.", :yellow)
    end
  end
end
