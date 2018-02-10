require 'test_helper'

class LoveControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get love_show_url
    assert_response :success
  end

end
