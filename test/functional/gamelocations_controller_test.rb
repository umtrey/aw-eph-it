require 'test_helper'

class GamelocationsControllerTest < ActionController::TestCase
  setup do
    @gamelocation = gamelocations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gamelocations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gamelocation" do
    assert_difference('Gamelocation.count') do
      post :create, :gamelocation => @gamelocation.attributes
    end

    assert_redirected_to gamelocation_path(assigns(:gamelocation))
  end

  test "should show gamelocation" do
    get :show, :id => @gamelocation.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @gamelocation.to_param
    assert_response :success
  end

  test "should update gamelocation" do
    put :update, :id => @gamelocation.to_param, :gamelocation => @gamelocation.attributes
    assert_redirected_to gamelocation_path(assigns(:gamelocation))
  end

  test "should destroy gamelocation" do
    assert_difference('Gamelocation.count', -1) do
      delete :destroy, :id => @gamelocation.to_param
    end

    assert_redirected_to gamelocations_path
  end
end
