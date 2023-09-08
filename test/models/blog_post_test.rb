require "test_helper"

class BlogPostTest < ActiveSupport::TestCase
  test "draft if published_at not set" do
    blog_post = BlogPost.new(title: "title", body: "body")
    assert blog_post.draft?
  end

  test "not draft if published_at set" do
    blog_post = BlogPost.new(title: "title", body: "body", published_at: 3.days.ago)
    refute blog_post.draft?
  end

  test "published if published_at set in the past" do
    blog_post = BlogPost.new(title: "title", body: "body", published_at: 3.days.ago)
    assert blog_post.published?
  end

  test "not published if published_at set in the future" do
    blog_post = BlogPost.new(title: "title", body: "body", published_at: 3.days.from_now)
    refute blog_post.published?
  end

  test "scheduled if published_at set in the future" do
    blog_post = BlogPost.new(title: "title", body: "body", published_at: 3.days.from_now)
    assert blog_post.scheduled?
  end
end
