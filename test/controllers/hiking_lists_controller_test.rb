require 'test_helper'

class HikingListControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get hiking_list_index_url
    assert_response :success
  end

end
