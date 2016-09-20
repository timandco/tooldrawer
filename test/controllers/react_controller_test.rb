require 'test_helper'

class ReactControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get react_show_url
    assert_response :success
  end

end
