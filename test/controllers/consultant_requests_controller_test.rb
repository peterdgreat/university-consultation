require "test_helper"

class ConsultantRequestsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get consultant_requests_create_url
    assert_response :success
  end

  test "should get index" do
    get consultant_requests_index_url
    assert_response :success
  end

  test "should get approve" do
    get consultant_requests_approve_url
    assert_response :success
  end
end
