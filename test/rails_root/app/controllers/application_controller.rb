class ApplicationController < ActionController::Base
  include ExceptionLogger::ExceptionLoggable
  rescue_from Exception, :with => :log_exception_handler
  protect_from_forgery
end
