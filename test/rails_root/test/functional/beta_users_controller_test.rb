require 'test_helper'

class BetaUsersControllerTest < ActionController::TestCase
  include BigAuth::TestHelper
  setup do
    @controller = BigBeta::BetaUsersController.new
    @beta_user = beta_users(:one)
  end

  test "should get index" do
    login_as(:one)
    get :index
    assert_response :success
    assert_not_nil assigns(:beta_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create beta_user" do

    assert_difference('BigBeta::BetaUser.count') do
      post :create, :big_beta_beta_user => {:email => "createtest@example.com"}
    end

    assert_response :success
  end

  test "should show beta_user" do
    login_as(:one)
    get :show, :id => beta_users(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    login_as(:one)
    get :edit, :id => beta_users(:one).to_param
    assert_response :success
  end

  test "should update beta_user" do
    login_as(:one)
    put :update, :id => beta_users(:one).to_param, :email => "new@example.com"
    assert_response :redirect
  end

  test "should destroy beta_user" do
    login_as(:one)
    assert_difference('BigBeta::BetaUser.count', -1) do
      delete :destroy, :id => beta_users(:one).to_param
    end

    assert_response :redirect
  end
end
