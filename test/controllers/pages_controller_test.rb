require 'test_helper'

# this covers how the app could be error-free

class PagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
    assert_select "title", "MyRoRBlog Home"
  end

  test "should get about" do
    get :about
    assert_response :success
    assert_select "title", "MyRoRBlog About"
  end

end
