require 'test_helper'

class PostControllerTest < ActionDispatch::IntegrationTest
  test "should get title:string" do
    get post_title:string_url
    assert_response :success
  end

  test "should get description:string" do
    get post_description:string_url
    assert_response :success
  end

end
