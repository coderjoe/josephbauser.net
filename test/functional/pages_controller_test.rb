require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  context "on GET to :home" do
    setup do
      get :home
    end

    should_respond_with :success
  end

  context "on GET to '/home'" do
    should_route :get, '/home', :controller => :pages, :action => :home
  end

  context "on GET to '/'" do
    should "route '/' to the home page" do
      assert_recognizes({:controller => 'pages', :action => 'home'}, '/')
    end
  end

end
