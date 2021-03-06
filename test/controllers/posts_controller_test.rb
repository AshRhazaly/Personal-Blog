require 'test_helper'

class PostsControllerTest < ActionDispatch::IntegrationTest
  test "should get :create" do
    get posts_:create_url
    assert_response :success
  end

  test "should get :show" do
    get posts_:show_url
    assert_response :success
  end

  test "should get :destroy" do
    get posts_:destroy_url
    assert_response :success
  end

  test "should get :edit" do
    get posts_:edit_url
    assert_response :success
  end

end
