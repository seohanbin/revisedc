require 'test_helper'

class StdoctorregistsControllerTest < ActionController::TestCase
  setup do
    @stdoctorregist = stdoctorregists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stdoctorregists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create stdoctorregist" do
    assert_difference('Stdoctorregist.count') do
      post :create, stdoctorregist: { completion: @stdoctorregist.completion, dpatient_id: @stdoctorregist.dpatient_id, dstdoctor_id: @stdoctorregist.dstdoctor_id, evaluation: @stdoctorregist.evaluation, treatcondition: @stdoctorregist.treatcondition, treatdescript: @stdoctorregist.treatdescript, treatsubject: @stdoctorregist.treatsubject }
    end

    assert_redirected_to stdoctorregist_path(assigns(:stdoctorregist))
  end

  test "should show stdoctorregist" do
    get :show, id: @stdoctorregist
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @stdoctorregist
    assert_response :success
  end

  test "should update stdoctorregist" do
    patch :update, id: @stdoctorregist, stdoctorregist: { completion: @stdoctorregist.completion, dpatient_id: @stdoctorregist.dpatient_id, dstdoctor_id: @stdoctorregist.dstdoctor_id, evaluation: @stdoctorregist.evaluation, treatcondition: @stdoctorregist.treatcondition, treatdescript: @stdoctorregist.treatdescript, treatsubject: @stdoctorregist.treatsubject }
    assert_redirected_to stdoctorregist_path(assigns(:stdoctorregist))
  end

  test "should destroy stdoctorregist" do
    assert_difference('Stdoctorregist.count', -1) do
      delete :destroy, id: @stdoctorregist
    end

    assert_redirected_to stdoctorregists_path
  end
end
