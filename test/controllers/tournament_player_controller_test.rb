require 'test_helper'

class TournamentPlayerControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tournament_player_index_url
    assert_response :success
  end

  test "should get create" do
    get tournament_player_create_url
    assert_response :success
  end

  test "should get show" do
    get tournament_player_show_url
    assert_response :success
  end

end
