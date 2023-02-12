require "test_helper"

class LoginsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get new_login_path
    assert_response :success
  end

  test "should respond to create post" do
    User.create(email: 'foo@bar.com', password: 'abc')
    post logins_path, params: {:user => { :email => 'foo@bar.com', :password => 'abc' }}
    assert_response :redirect
  end
end
