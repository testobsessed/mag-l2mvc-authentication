require "test_helper"

class UserTest < ActiveSupport::TestCase
  setup do
    @user = User.new
  end
  test "Should require email" do
    @user.password = "abc"
    assert_not @user.save
  end
  test "Should require password" do
    @user.email = "foo@bar.com"
    assert_not @user.save
  end
  test "Should save with required params" do
    @user.email = "foo@bar.com"
    @user.password = "abc"
    assert @user.save
  end
end
