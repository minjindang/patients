require 'test_helper'

class PatientsControllerTest < ActionController::TestCase
  setup do
    @patient = patients(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:patients)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create patient" do
    assert_difference('Patient.count') do
      post :create, patient: { Date_of_birth: @patient.Date_of_birth, First_name: @patient.First_name, Gender: @patient.Gender, Last_name: @patient.Last_name, Location: @patient.Location, Medical_Record_number: @patient.Medical_Record_number, Middle_name: @patient.Middle_name, Status: @patient.Status }
    end

    assert_redirected_to patient_path(assigns(:patient))
  end

  test "should show patient" do
    get :show, id: @patient
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @patient
    assert_response :success
  end

  test "should update patient" do
    patch :update, id: @patient, patient: { Date_of_birth: @patient.Date_of_birth, First_name: @patient.First_name, Gender: @patient.Gender, Last_name: @patient.Last_name, Location: @patient.Location, Medical_Record_number: @patient.Medical_Record_number, Middle_name: @patient.Middle_name, Status: @patient.Status }
    assert_redirected_to patient_path(assigns(:patient))
  end

  test "should destroy patient" do
    assert_difference('Patient.count', -1) do
      delete :destroy, id: @patient
    end

    assert_redirected_to patients_path
  end
end
