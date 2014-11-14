require 'test_helper'

class TutorialTypesControllerTest < ActionController::TestCase
  setup do
    @tutorial_type = tutorial_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tutorial_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tutorial_type" do
    assert_difference('TutorialType.count') do
      post :create, tutorial_type: { name: @tutorial_type.name, status: @tutorial_type.status }
    end

    assert_redirected_to tutorial_type_path(assigns(:tutorial_type))
  end

  test "should show tutorial_type" do
    get :show, id: @tutorial_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tutorial_type
    assert_response :success
  end

  test "should update tutorial_type" do
    put :update, id: @tutorial_type, tutorial_type: { name: @tutorial_type.name, status: @tutorial_type.status }
    assert_redirected_to tutorial_type_path(assigns(:tutorial_type))
  end

  test "should destroy tutorial_type" do
    assert_difference('TutorialType.count', -1) do
      delete :destroy, id: @tutorial_type
    end

    assert_redirected_to tutorial_types_path
  end
end
