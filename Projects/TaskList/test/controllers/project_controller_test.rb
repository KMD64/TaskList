require 'test_helper'

class ProjectControllerTest < ActionDispatch::IntegrationTest
  test "should get title" do
    get project_title_url
    assert_response :success
  end

end
