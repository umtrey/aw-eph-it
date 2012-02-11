require 'test_helper'

class GameSearchControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get query" do
    get :query
    assert_response :success
  end

  test "should get list" do
    get :list
    assert_response :success
  end

end
