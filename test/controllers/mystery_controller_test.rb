require 'test_helper'

class MysteryControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get mystery_show_url
    assert_response :success
  end

end
