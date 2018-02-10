require 'test_helper'

class ScifiControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get scifi_show_url
    assert_response :success
  end

end
