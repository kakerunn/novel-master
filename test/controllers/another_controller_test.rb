require 'test_helper'

class AnotherControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get another_show_url
    assert_response :success
  end

end
