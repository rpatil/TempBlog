require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post :create, user: { email: @user.email, follow_facebook: @user.follow_facebook, follow_github: @user.follow_github, follow_linkedin: @user.follow_linkedin, follow_stackoverflow: @user.follow_stackoverflow, follow_twitter: @user.follow_twitter, introduction: @user.introduction, name: @user.name, status: @user.status, website: @user.website }
    end

    assert_redirected_to user_path(assigns(:user))
  end

  test "should show user" do
    get :show, id: @user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user
    assert_response :success
  end

  test "should update user" do
    put :update, id: @user, user: { email: @user.email, follow_facebook: @user.follow_facebook, follow_github: @user.follow_github, follow_linkedin: @user.follow_linkedin, follow_stackoverflow: @user.follow_stackoverflow, follow_twitter: @user.follow_twitter, introduction: @user.introduction, name: @user.name, status: @user.status, website: @user.website }
    assert_redirected_to user_path(assigns(:user))
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete :destroy, id: @user
    end

    assert_redirected_to users_path
  end
end
