require 'test_helper'

class StreamCategoriesControllerTest < ActionController::TestCase
  setup do
    @stream_category = stream_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stream_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create stream_category" do
    assert_difference('StreamCategory.count') do
      post :create, stream_category: { name: @stream_category.name }
    end

    assert_redirected_to stream_category_path(assigns(:stream_category))
  end

  test "should show stream_category" do
    get :show, id: @stream_category
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @stream_category
    assert_response :success
  end

  test "should update stream_category" do
    patch :update, id: @stream_category, stream_category: { name: @stream_category.name }
    assert_redirected_to stream_category_path(assigns(:stream_category))
  end

  test "should destroy stream_category" do
    assert_difference('StreamCategory.count', -1) do
      delete :destroy, id: @stream_category
    end

    assert_redirected_to stream_categories_path
  end
end
