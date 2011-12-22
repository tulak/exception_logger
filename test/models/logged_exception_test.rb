require 'test_helper'

class LoggedExceptionTest < ActiveSupport::TestCase

  context "A logged exception" do
    setup do
      @logged_exception = Factory(:logged_exception)
    end

    should "respond to exception_class" do
      assert_respond_to @logged_exception, :exception_class
    end

    should "respond to controller_name" do
      assert_respond_to @logged_exception, :controller_name
    end

    should "respond to action_name" do
      assert_respond_to @logged_exception, :action_name
    end

    should "respond to message" do
      assert_respond_to @logged_exception, :message
    end

    should "respond to backtrace" do
      assert_respond_to @logged_exception, :backtrace
    end

    should "respond to environment" do
      assert_respond_to @logged_exception, :environment
    end

    should "respond to request" do
      assert_respond_to @logged_exception, :request
    end

  end
end
