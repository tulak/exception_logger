require 'exception_logger/version'
module ExceptionLogger
   require 'exception_logger/engine' if defined?(Rails) && Rails::VERSION::MAJOR == 3
   require 'exception_logger/exception_loggable' if defined?(Rails) && Rails::VERSION::MAJOR == 3
end