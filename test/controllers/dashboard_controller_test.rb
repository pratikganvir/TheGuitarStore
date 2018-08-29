require 'test_helper'

class DashboardControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get dashboard_home_url
    assert_response :success
  end

  test "should get cart" do
    get dashboard_cart_url
    assert_response :success
  end

end
