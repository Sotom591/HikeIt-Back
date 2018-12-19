require 'test_helper'

class PackingItemsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get packing_items_index_url
    assert_response :success
  end

end
