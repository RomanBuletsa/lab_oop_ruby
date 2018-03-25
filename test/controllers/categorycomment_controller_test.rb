require 'test_helper'

class CategorycommentControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get categorycomment_new_url
    assert_response :success
  end

end
