require 'test_helper'

class CaptainsControllerTest < ActionController::TestCase
  setup do
    @captain = captains(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:captains)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create captain" do
    assert_difference('Captain.count') do
      post :create, captain: { cartel: @captain.cartel, name: @captain.name, user_id: @captain.user_id, world: @captain.world }
    end

    assert_redirected_to captain_path(assigns(:captain))
  end

  test "should show captain" do
    get :show, id: @captain
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @captain
    assert_response :success
  end

  test "should update captain" do
    patch :update, id: @captain, captain: { cartel: @captain.cartel, name: @captain.name, user_id: @captain.user_id, world: @captain.world }
    assert_redirected_to captain_path(assigns(:captain))
  end

  test "should destroy captain" do
    assert_difference('Captain.count', -1) do
      delete :destroy, id: @captain
    end

    assert_redirected_to captains_path
  end
end
