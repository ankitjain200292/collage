require 'test_helper'

class CollegesControllerTest < ActionController::TestCase
  setup do
    @college = colleges(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:colleges)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create college" do
    assert_difference('College.count') do
      post :create, college: { address1: @college.address1, address2: @college.address2, collage_type: @college.collage_type, college_email: @college.college_email, college_website: @college.college_website, facebook_link: @college.facebook_link, information: @college.information, landline: @college.landline, linkedin_link: @college.linkedin_link, mobile: @college.mobile, name: @college.name, pincode: @college.pincode, tution_fee: @college.tution_fee, twitter_link: @college.twitter_link, year: @college.year }
    end

    assert_redirected_to college_path(assigns(:college))
  end

  test "should show college" do
    get :show, id: @college
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @college
    assert_response :success
  end

  test "should update college" do
    patch :update, id: @college, college: { address1: @college.address1, address2: @college.address2, collage_type: @college.collage_type, college_email: @college.college_email, college_website: @college.college_website, facebook_link: @college.facebook_link, information: @college.information, landline: @college.landline, linkedin_link: @college.linkedin_link, mobile: @college.mobile, name: @college.name, pincode: @college.pincode, tution_fee: @college.tution_fee, twitter_link: @college.twitter_link, year: @college.year }
    assert_redirected_to college_path(assigns(:college))
  end

  test "should destroy college" do
    assert_difference('College.count', -1) do
      delete :destroy, id: @college
    end

    assert_redirected_to colleges_path
  end
end
