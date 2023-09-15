require "test_helper"

class BlogPostsControllerTest < ActionDispatch::IntegrationTest
  test "root path should show the blog posts index" do
    get root_path
    assert_response :success
  end
end
