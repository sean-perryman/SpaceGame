require 'test_helper'

class PlayerShipsControllerTest < ActionController::TestCase
  setup do
    @player_ship = player_ships(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:player_ships)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create player_ship" do
    assert_difference('PlayerShip.count') do
      post :create, player_ship: { captain_id: @player_ship.captain_id, cargo_spaces: @player_ship.cargo_spaces, fighters: @player_ship.fighters, fuel_remaining: @player_ship.fuel_remaining, fuel_total: @player_ship.fuel_total, name: @player_ship.name, ship_id: @player_ship.ship_id }
    end

    assert_redirected_to player_ship_path(assigns(:player_ship))
  end

  test "should show player_ship" do
    get :show, id: @player_ship
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @player_ship
    assert_response :success
  end

  test "should update player_ship" do
    patch :update, id: @player_ship, player_ship: { captain_id: @player_ship.captain_id, cargo_spaces: @player_ship.cargo_spaces, fighters: @player_ship.fighters, fuel_remaining: @player_ship.fuel_remaining, fuel_total: @player_ship.fuel_total, name: @player_ship.name, ship_id: @player_ship.ship_id }
    assert_redirected_to player_ship_path(assigns(:player_ship))
  end

  test "should destroy player_ship" do
    assert_difference('PlayerShip.count', -1) do
      delete :destroy, id: @player_ship
    end

    assert_redirected_to player_ships_path
  end
end
