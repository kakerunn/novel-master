require 'test_helper'

class HorrorControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get horror_show_url
    assert_response :success
  end

end
