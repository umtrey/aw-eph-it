require 'test_helper'

class GameingredientsControllerTest < ActionController::TestCase
  setup do
    @gameingredient = gameingredients(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gameingredients)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gameingredient" do
    assert_difference('Gameingredient.count') do
      post :create, :gameingredient => @gameingredient.attributes
    end

    assert_redirected_to gameingredient_path(assigns(:gameingredient))
  end

  test "should show gameingredient" do
    get :show, :id => @gameingredient.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @gameingredient.to_param
    assert_response :success
  end

  test "should update gameingredient" do
    put :update, :id => @gameingredient.to_param, :gameingredient => @gameingredient.attributes
    assert_redirected_to gameingredient_path(assigns(:gameingredient))
  end

  test "should destroy gameingredient" do
    assert_difference('Gameingredient.count', -1) do
      delete :destroy, :id => @gameingredient.to_param
    end

    assert_redirected_to gameingredients_path
  end
end
