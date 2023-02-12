require "test_helper"

class RegistrationsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get new_registration_path
    assert_response :success
  end

  test "should respond to create post" do
    post registrations_path
    assert_response :success
  end
end
