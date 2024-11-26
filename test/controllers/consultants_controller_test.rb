require "test_helper"

class ConsultantsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get consultants_index_url
    assert_response :success
  end

  test "should get show" do
    get consultants_show_url
    assert_response :success
  end
end
