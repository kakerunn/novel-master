require 'test_helper'

class FantasyControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get fantasy_show_url
    assert_response :success
  end

end
