require "test_helper"

class EducationsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get educations_show_url
    assert_response :success
  end
end
