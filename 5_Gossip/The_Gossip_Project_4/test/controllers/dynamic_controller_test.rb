require 'test_helper'

class DynamicControllerTest < ActionDispatch::IntegrationTest
  test "should get gossip" do
    get dynamic_gossip_url
    assert_response :success
  end

end
