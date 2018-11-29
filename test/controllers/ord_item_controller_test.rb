require 'test_helper'

class OrdItemControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get ord_item_create_url
    assert_response :success
  end

end
