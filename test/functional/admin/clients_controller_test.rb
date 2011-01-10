require 'test_helper'
include Devise::TestHelpers

class Admin::ClientsControllerTest < ActionController::TestCase
  setup do
    @client = Factory(:client)
    @user = Factory(:user)
    sign_in @user
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clients) #  @clients
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create client" do
    assert_difference('Client.count') do
      post :create, :client => Factory.build(:client).attributes
    end

    assert_redirected_to admin_clients_path #  @client
  end

  test "should get edit" do
    get :edit, :id => @client.to_param
    assert_response :success
  end

  test "should update admin_client" do
    put :update, :id => @client.to_param, :client => @client.attributes
    assert_redirected_to admin_clients_path
  end

  test "should destroy admin_client" do
    assert_difference('Client.count', -1) do
      delete :destroy, :id => @client.to_param
    end

    assert_redirected_to admin_clients_path
  end
end
