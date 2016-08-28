require 'test_helper'

class PatientregistsControllerTest < ActionController::TestCase
  setup do
    @patientregist = patientregists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:patientregists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create patientregist" do
    assert_difference('Patientregist.count') do
      post :create, patientregist: { chiefcomplaint: @patientregist.chiefcomplaint, completion: @patientregist.completion, dpatient_id: @patientregist.dpatient_id, dstdoctor_id: @patientregist.dstdoctor_id, evaluation: @patientregist.evaluation, pipainwhen: @patientregist.pipainwhen, piprogress: @patientregist.piprogress, pisustain: @patientregist.pisustain }
    end

    assert_redirected_to patientregist_path(assigns(:patientregist))
  end

  test "should show patientregist" do
    get :show, id: @patientregist
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @patientregist
    assert_response :success
  end

  test "should update patientregist" do
    patch :update, id: @patientregist, patientregist: { chiefcomplaint: @patientregist.chiefcomplaint, completion: @patientregist.completion, dpatient_id: @patientregist.dpatient_id, dstdoctor_id: @patientregist.dstdoctor_id, evaluation: @patientregist.evaluation, pipainwhen: @patientregist.pipainwhen, piprogress: @patientregist.piprogress, pisustain: @patientregist.pisustain }
    assert_redirected_to patientregist_path(assigns(:patientregist))
  end

  test "should destroy patientregist" do
    assert_difference('Patientregist.count', -1) do
      delete :destroy, id: @patientregist
    end

    assert_redirected_to patientregists_path
  end
end
