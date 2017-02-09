require 'test_helper'

class TeamsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @team = teams(:one)
  end

  test "should get index" do
    get teams_url
    assert_response :success
  end

  test "should get new" do
    get new_team_url
    assert_response :success
  end

  test "should create team" do
    assert_difference('Team.count') do
      post teams_url, params: { team: { name: @team.name, player_10: @team.player_10, player_11: @team.player_11, player_12: @team.player_12, player_13: @team.player_13, player_14: @team.player_14, player_15: @team.player_15, player_1: @team.player_1, player_2: @team.player_2, player_3: @team.player_3, player_4: @team.player_4, player_5: @team.player_5, player_6: @team.player_6, player_7: @team.player_7, player_8: @team.player_8, player_9: @team.player_9 } }
    end

    assert_redirected_to team_url(Team.last)
  end

  test "should show team" do
    get team_url(@team)
    assert_response :success
  end

  test "should get edit" do
    get edit_team_url(@team)
    assert_response :success
  end

  test "should update team" do
    patch team_url(@team), params: { team: { name: @team.name, player_10: @team.player_10, player_11: @team.player_11, player_12: @team.player_12, player_13: @team.player_13, player_14: @team.player_14, player_15: @team.player_15, player_1: @team.player_1, player_2: @team.player_2, player_3: @team.player_3, player_4: @team.player_4, player_5: @team.player_5, player_6: @team.player_6, player_7: @team.player_7, player_8: @team.player_8, player_9: @team.player_9 } }
    assert_redirected_to team_url(@team)
  end

  test "should destroy team" do
    assert_difference('Team.count', -1) do
      delete team_url(@team)
    end

    assert_redirected_to teams_url
  end
end
