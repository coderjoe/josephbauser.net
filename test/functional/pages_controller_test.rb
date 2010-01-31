require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  context "on GET to :home" do
    setup do
      get :home
    end

    should_respond_with :success
  end

  context "on GET to :contact" do
    setup do
      get :contact
    end

    should_respond_with :success
  end

  context "on GET to :projects" do
    setup do
      get :projects
    end
      
    should_respond_with :success
  end

  context "on GET to :about" do
    setup do
      get :about
    end

    should_respond_with :success
  end
end
