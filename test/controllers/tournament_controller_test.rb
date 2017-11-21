require 'test_helper'

class TournamentControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tournament_index_url
    assert_response :success
  end

  test "should get create" do
    get tournament_create_url
    assert_response :success
  end

  test "should get show" do
    get tournament_show_url
    assert_response :success
  end

end
