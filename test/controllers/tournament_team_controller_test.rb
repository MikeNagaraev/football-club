require 'test_helper'

class TournamentTeamControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tournament_team_index_url
    assert_response :success
  end

  test "should get create" do
    get tournament_team_create_url
    assert_response :success
  end

  test "should get show" do
    get tournament_team_show_url
    assert_response :success
  end

end
