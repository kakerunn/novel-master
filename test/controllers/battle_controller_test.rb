require 'test_helper'

class BattleControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get battle_show_url
    assert_response :success
  end

end
