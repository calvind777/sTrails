require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get confirm" do
    get :confirm
    assert_response :success
  end

  test "should get home" do
    get :home
    assert_response :success
  end

end
