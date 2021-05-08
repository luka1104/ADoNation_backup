require "test_helper"

class AiDControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get ai_d_index_url
    assert_response :success
  end
end
