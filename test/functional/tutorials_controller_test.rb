require 'test_helper'

class TutorialsControllerTest < ActionController::TestCase
  setup do
    @tutorial = tutorials(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tutorials)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tutorial" do
    assert_difference('Tutorial.count') do
      post :create, tutorial: { attachment_link: @tutorial.attachment_link, attachment_name: @tutorial.attachment_name, categories: @tutorial.categories, conclusion: @tutorial.conclusion, content_introduction: @tutorial.content_introduction, content_main: @tutorial.content_main, demo_link: @tutorial.demo_link, github_link: @tutorial.github_link, mode: @tutorial.mode, primary_category: @tutorial.primary_category, publish_date: @tutorial.publish_date, related_link: @tutorial.related_link, slug: @tutorial.slug, state: @tutorial.state, time: @tutorial.time, title: @tutorial.title, total_view: @tutorial.total_view, type: @tutorial.type, user_id: @tutorial.user_id, video_url: @tutorial.video_url, vote_up: @tutorial.vote_up }
    end

    assert_redirected_to tutorial_path(assigns(:tutorial))
  end

  test "should show tutorial" do
    get :show, id: @tutorial
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tutorial
    assert_response :success
  end

  test "should update tutorial" do
    put :update, id: @tutorial, tutorial: { attachment_link: @tutorial.attachment_link, attachment_name: @tutorial.attachment_name, categories: @tutorial.categories, conclusion: @tutorial.conclusion, content_introduction: @tutorial.content_introduction, content_main: @tutorial.content_main, demo_link: @tutorial.demo_link, github_link: @tutorial.github_link, mode: @tutorial.mode, primary_category: @tutorial.primary_category, publish_date: @tutorial.publish_date, related_link: @tutorial.related_link, slug: @tutorial.slug, state: @tutorial.state, time: @tutorial.time, title: @tutorial.title, total_view: @tutorial.total_view, type: @tutorial.type, user_id: @tutorial.user_id, video_url: @tutorial.video_url, vote_up: @tutorial.vote_up }
    assert_redirected_to tutorial_path(assigns(:tutorial))
  end

  test "should destroy tutorial" do
    assert_difference('Tutorial.count', -1) do
      delete :destroy, id: @tutorial
    end

    assert_redirected_to tutorials_path
  end
end
