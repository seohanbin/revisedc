require 'test_helper'

class MatchcaseControllerTest < ActionController::TestCase
  test "should get prindex" do
    get :prindex
    assert_response :success
  end

  test "should get selectpatient" do
    get :selectpatient
    assert_response :success
  end

  test "should get confirmpr" do
    get :confirmpr
    assert_response :success
  end

  test "should get drindex" do
    get :drindex
    assert_response :success
  end

  test "should get selectstdoctor" do
    get :selectstdoctor
    assert_response :success
  end

  test "should get confirmdr" do
    get :confirmdr
    assert_response :success
  end

end
