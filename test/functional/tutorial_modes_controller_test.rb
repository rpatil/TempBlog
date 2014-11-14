require 'test_helper'

class TutorialModesControllerTest < ActionController::TestCase
  setup do
    @tutorial_mode = tutorial_modes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tutorial_modes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tutorial_mode" do
    assert_difference('TutorialMode.count') do
      post :create, tutorial_mode: { name: @tutorial_mode.name, status: @tutorial_mode.status }
    end

    assert_redirected_to tutorial_mode_path(assigns(:tutorial_mode))
  end

  test "should show tutorial_mode" do
    get :show, id: @tutorial_mode
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tutorial_mode
    assert_response :success
  end

  test "should update tutorial_mode" do
    put :update, id: @tutorial_mode, tutorial_mode: { name: @tutorial_mode.name, status: @tutorial_mode.status }
    assert_redirected_to tutorial_mode_path(assigns(:tutorial_mode))
  end

  test "should destroy tutorial_mode" do
    assert_difference('TutorialMode.count', -1) do
      delete :destroy, id: @tutorial_mode
    end

    assert_redirected_to tutorial_modes_path
  end
end
