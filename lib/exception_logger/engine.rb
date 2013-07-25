require "exception_logger"
require "rails"
require "kaminari"
require "i18n"
require "squeel"

module ExceptionLogger
  class Engine < Rails::Engine
    initializer "precompile", :group => :all do |app|
      app.config.assets.precompile << "exception_logger.js"
      app.config.assets.precompile << "exception_logger.css"
    end
    ## Better: TODO create rake task to copy files to application/public
    initializer "static assets" do |app|
      app.middleware.use ::ActionDispatch::Static, "#{root}/public"
    end
    rake_tasks do
      load File.expand_path(File.dirname(__FILE__) + '/../railties/tasks.rake')
    end

  end
end
