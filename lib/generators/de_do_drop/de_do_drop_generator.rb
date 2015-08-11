require 'rails/generators/base'
class DeDoDropGenerator < Rails::Generators::Base
  source_root File.expand_path('../templates', __FILE__)
  namespace 'dedodrop:install'

  def execute
    copy_partial
    copy_css
    copy_js
    copy_rb
  end

  private

  def copy_partial
    p "Creating 'shared' folder in views..."
    if system "mkdir app/views/shared"  
      "Folder created." 
    else
      "Folder already existed."
    end
    copy_file "_dedodrop.html.erb", "app/views/shared/_dedodrop.html.erb"
  end

  def copy_css
    p "Creating 'dedodrop.css' folder in assets/stylesheets..."
    if system "mkdir app/assets/stylesheets"  
      "Folder created." 
    else
      "Folder already existed."
    end
    copy_file "dedodrop.css", "app/assets/stylesheets/dedodrop.css"
  end

  def copy_js
    p "Creating 'dedodrop.js' folder in assets/javascripts..."
    if system "mkdir app/assets/javascripts"  
      "Folder created." 
    else
      "Folder already existed."
    end
    copy_file "dedodrop.js", "app/assets/javascripts/dedodrop.js"
  end

  def copy_rb
    p "Creating 'de_do_drop.rb' folder in lib/assets/de_do_drop..."
    if system "mkdir lib/assets/de_do_drop"  
      "Folder created." 
    else
      "Folder already existed."
    end
    copy_file "de_do_drop.rb", "lib/assets/de_do_drop/de_do_drop.rb"
  end
end