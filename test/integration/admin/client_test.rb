require 'test_helper'
include Devise::TestHelpers

class Admin::ClientTest < ActionDispatch::IntegrationTest


  test "registration process" do

    get "/users/sign_up"
    assert_response :success

    assert_difference("User.count") do
      post_via_redirect "/users", "user[email]" => "test@test.com", "user[password]" => "password", "user[password_confirmation]" => "password"
    end
    assert_equal "/", path
    assert_equal "You have signed up successfully. If enabled, a confirmation was sent to your e-mail.", flash[:notice]
  end
  test "invalid registration process - duplicate email" do

    get "/users/sign_up"
    assert_response :success
    user = Factory(:user)
    post_via_redirect "/users", "user[email]" => user.email, "user[password]" => "password", "user[password_confirmation]" => "password"
    user = assigns(:user)
    assert_equal user.errors.count, 1
    assert_equal "/users", path
  end
end
