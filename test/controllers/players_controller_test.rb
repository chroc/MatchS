require 'test_helper'

class PlayersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @player = players(:one)
  end

  test "should get index" do
    get players_url
    assert_response :success
  end

  test "should get new" do
    get new_player_url
    assert_response :success
  end

  test "should create player" do
    assert_difference('Player.count') do
      post players_url, params: { player: { additional_info: @player.additional_info, birthdate: @player.birthdate, email: @player.email, first_name: @player.first_name, genre: @player.genre, last_name: @player.last_name, passwrod: @player.passwrod, position_1: @player.position_1, position_2: @player.position_2 } }
    end

    assert_redirected_to player_url(Player.last)
  end

  test "should show player" do
    get player_url(@player)
    assert_response :success
  end

  test "should get edit" do
    get edit_player_url(@player)
    assert_response :success
  end

  test "should update player" do
    patch player_url(@player), params: { player: { additional_info: @player.additional_info, birthdate: @player.birthdate, email: @player.email, first_name: @player.first_name, genre: @player.genre, last_name: @player.last_name, passwrod: @player.passwrod, position_1: @player.position_1, position_2: @player.position_2 } }
    assert_redirected_to player_url(@player)
  end

  test "should destroy player" do
    assert_difference('Player.count', -1) do
      delete player_url(@player)
    end

    assert_redirected_to players_url
  end
end
