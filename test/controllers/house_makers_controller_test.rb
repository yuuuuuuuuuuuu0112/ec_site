require 'test_helper'

class HouseMakersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get house_makers_index_url
    assert_response :success
  end

  test "should get show" do
    get house_makers_show_url
    assert_response :success
  end

end
