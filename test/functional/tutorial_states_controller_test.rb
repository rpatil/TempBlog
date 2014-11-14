require 'test_helper'

class TutorialStatesControllerTest < ActionController::TestCase
  setup do
    @tutorial_state = tutorial_states(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tutorial_states)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tutorial_state" do
    assert_difference('TutorialState.count') do
      post :create, tutorial_state: { name: @tutorial_state.name, status: @tutorial_state.status }
    end

    assert_redirected_to tutorial_state_path(assigns(:tutorial_state))
  end

  test "should show tutorial_state" do
    get :show, id: @tutorial_state
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tutorial_state
    assert_response :success
  end

  test "should update tutorial_state" do
    put :update, id: @tutorial_state, tutorial_state: { name: @tutorial_state.name, status: @tutorial_state.status }
    assert_redirected_to tutorial_state_path(assigns(:tutorial_state))
  end

  test "should destroy tutorial_state" do
    assert_difference('TutorialState.count', -1) do
      delete :destroy, id: @tutorial_state
    end

    assert_redirected_to tutorial_states_path
  end
end
