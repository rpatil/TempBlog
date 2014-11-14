require 'test_helper'

class PrimaryCategoriesControllerTest < ActionController::TestCase
  setup do
    @primary_category = primary_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:primary_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create primary_category" do
    assert_difference('PrimaryCategory.count') do
      post :create, primary_category: { display_name: @primary_category.display_name, name: @primary_category.name, status: @primary_category.status }
    end

    assert_redirected_to primary_category_path(assigns(:primary_category))
  end

  test "should show primary_category" do
    get :show, id: @primary_category
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @primary_category
    assert_response :success
  end

  test "should update primary_category" do
    put :update, id: @primary_category, primary_category: { display_name: @primary_category.display_name, name: @primary_category.name, status: @primary_category.status }
    assert_redirected_to primary_category_path(assigns(:primary_category))
  end

  test "should destroy primary_category" do
    assert_difference('PrimaryCategory.count', -1) do
      delete :destroy, id: @primary_category
    end

    assert_redirected_to primary_categories_path
  end
end
