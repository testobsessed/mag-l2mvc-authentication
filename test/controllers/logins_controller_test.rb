require "test_helper"

class LoginsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get new_login_path
    assert_response :success
  end

  test "should respond to create post" do
    post logins_path
    assert_response :success
  end
end
