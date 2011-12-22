require 'test_helper'

class LoggedExceptionsControllerTest < ActionController::TestCase

  tests LoggedExceptionsController

  context "whitout javascript" do
    
    context "on GET to #index" do

      setup do
        @exception = Factory(:logged_exception, :id => 123)
        get :index
      end

      should respond_with(:success)
      should render_template(:index)
      should "query all unique exception names" do
        assert_not_nil assigns(:exception_names)
        assert_equal ["FunnyError"], assigns(:exception_names)
      end
      should "query all unique controller and action names" do
        assert_not_nil assigns(:controller_actions)
        assert_equal ["Main/index"], assigns(:controller_actions)
      end
      should "set exceptions variable for view" do
        assert_not_nil assigns(:exceptions)
        assert_equal [@exception], assigns(:exceptions)
      end
      should render_with_layout :logged_exceptions
      should_not set_the_flash

    end

    context "on GET to #show for exception 123" do

      setup do
        @exception = Factory(:logged_exception, :id => 123)
        get :show, :id => "123"
      end

      should respond_with(:success)
      should render_template(:show)
      should "set exception variable for view" do
        assert_not_nil assigns(:exception)
        assert_equal @exception, assigns(:exception)
      end
      should render_with_layout :logged_exceptions
      should_not set_the_flash

    end

  end

  context "with javascript" do

    setup do
      @exception = Factory(:logged_exception, :id => 123)
    end
    
    context "on XHR to #index" do

      setup do
        xhr :post, :index
      end

      should respond_with(:success)
      should "query all unique exception names" do
        assert_not_nil assigns(:exception_names)
        assert_equal ["FunnyError"], assigns(:exception_names)
      end
      should "query all unique controller and action names" do
        assert_not_nil assigns(:controller_actions)
        assert_equal ["Main/index"], assigns(:controller_actions)
      end
      should "set exceptions variable for view" do
        assert_not_nil assigns(:exceptions)
        assert_equal [@exception], assigns(:exceptions)
      end
      should_not set_the_flash

    end

    context "on XHR to #show" do

      setup do
        xhr :post, :show, :id => "123"
      end

      should respond_with(:success)
      should "set exception variable for view" do
        assert_not_nil assigns(:exception)
        assert_equal @exception, assigns(:exception)
      end
      should_not set_the_flash

    end

    context "on XHR to #query" do

      context "when querying for date ranges" do
        setup do
          xhr :post, :query, :date_ranges_filter => "1"
        end

        should respond_with(:success)
        should "set exceptions variable for view" do
          assert_not_nil assigns(:exceptions)
          assert_equal @exception, assigns(:exceptions).first
        end
        should_not set_the_flash

      end

      context "when querying for exception names" do

        setup do
          xhr :post, :query, :exception_names_filter => "FunnyError"
        end

        should respond_with(:success)
        should "set exceptions variable for view" do
          assert_not_nil assigns(:exceptions)
          assert_equal @exception, assigns(:exceptions).first
        end
        should_not set_the_flash

      end

      context "when querying for controller actions" do

        setup do
          xhr :post, :query, :controller_actions_filter => "Main/index"
        end

        should respond_with(:success)
        should "set exceptions variable for view" do
          assert_not_nil assigns(:exceptions)
          assert_equal @exception, assigns(:exceptions).first
        end
        should_not set_the_flash

      end

      context "when querying using all parameters" do

        setup do
          xhr :post, :query, :date_ranges_filter => "1", :exception_names_filter => "FunnyError", :controller_actions_filter => "Main/index"
        end

        should respond_with(:success)
        should "set exceptions variable for view" do
          assert_not_nil assigns(:exceptions)
          assert_equal @exception, assigns(:exceptions).first
        end
        should_not set_the_flash

      end

    end

    context "on XHR to destroy_all" do

      context "with valid ids" do

        setup do
          xhr :post, :destroy_all, :ids => ["123"]
        end

        should respond_with(:success)
        should "delete the exceptions" do
          assert_equal 0, LoggedException.count
        end
        should_not set_the_flash

      end

      context "without valid ids" do

        setup do
          xhr :post, :destroy_all, :ids => []
        end

        should respond_with(:success)
        should "not delete an exception" do
          assert_equal 1, LoggedException.count
        end
        should_not set_the_flash

      end
      
    end

  end

end
