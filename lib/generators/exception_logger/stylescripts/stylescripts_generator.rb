require 'rails/generators'

module ExceptionLogger
  class StylescriptsGenerator < Rails::Generators::Base
    desc "Copies exception_logger.css to public/stylesheets/ and copies exception_logger.js to public/javascripts/"

    def self.source_root
      # Set source directory for the templates to the rails2 generator template directory
      @source_root ||= File.expand_path(File.join('..', '..', '..', '..', 'public'), File.dirname(__FILE__))
    end

    def self.banner
      "rails generate exception_logger:stylescripts [options]"
    end

    def copy_files
      empty_directory 'public/stylesheets'
      template 'stylesheets/exception_logger.css', 'public/stylesheets/exception_logger.css'

      empty_directory 'public/javascripts'
      template 'javascripts/exception_logger.js', 'public/javascripts/exception_logger.js'
    end
  end
end