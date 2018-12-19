require 'test_helper'

class PackingListControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get packing_list_index_url
    assert_response :success
  end

end
