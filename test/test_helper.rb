ENV["RAILS_ENV"] = "test"
require File.expand_path(File.dirname(__FILE__) + "/rails_root/config/environment")
require 'rails/test_help'

require 'exception_logger'

begin
  require 'redgreen'
rescue LoadError
end
