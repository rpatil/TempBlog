require 'test_helper'

class TutorialTimesControllerTest < ActionController::TestCase
  setup do
    @tutorial_time = tutorial_times(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tutorial_times)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tutorial_time" do
    assert_difference('TutorialTime.count') do
      post :create, tutorial_time: { name: @tutorial_time.name, status: @tutorial_time.status }
    end

    assert_redirected_to tutorial_time_path(assigns(:tutorial_time))
  end

  test "should show tutorial_time" do
    get :show, id: @tutorial_time
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tutorial_time
    assert_response :success
  end

  test "should update tutorial_time" do
    put :update, id: @tutorial_time, tutorial_time: { name: @tutorial_time.name, status: @tutorial_time.status }
    assert_redirected_to tutorial_time_path(assigns(:tutorial_time))
  end

  test "should destroy tutorial_time" do
    assert_difference('TutorialTime.count', -1) do
      delete :destroy, id: @tutorial_time
    end

    assert_redirected_to tutorial_times_path
  end
end
