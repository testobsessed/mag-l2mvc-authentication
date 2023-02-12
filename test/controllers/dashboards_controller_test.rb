require "test_helper"

class DashboardsControllerTest < ActionDispatch::IntegrationTest
  test "should redirect if not logged in" do
    get dashboards_path
    assert_response :redirect
  end
end
