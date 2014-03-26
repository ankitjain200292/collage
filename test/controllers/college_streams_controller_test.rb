require 'test_helper'

class CollegeStreamsControllerTest < ActionController::TestCase
  setup do
    @college_stream = college_streams(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:college_streams)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create college_stream" do
    assert_difference('CollegeStream.count') do
      post :create, college_stream: { category_id: @college_stream.category_id, college_id: @college_stream.college_id, stream_category_id: @college_stream.stream_category_id }
    end

    assert_redirected_to college_stream_path(assigns(:college_stream))
  end

  test "should show college_stream" do
    get :show, id: @college_stream
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @college_stream
    assert_response :success
  end

  test "should update college_stream" do
    patch :update, id: @college_stream, college_stream: { category_id: @college_stream.category_id, college_id: @college_stream.college_id, stream_category_id: @college_stream.stream_category_id }
    assert_redirected_to college_stream_path(assigns(:college_stream))
  end

  test "should destroy college_stream" do
    assert_difference('CollegeStream.count', -1) do
      delete :destroy, id: @college_stream
    end

    assert_redirected_to college_streams_path
  end
end
