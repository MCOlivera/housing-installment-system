require 'test_helper'

class EmploymentHistoriesControllerTest < ActionController::TestCase
  setup do
    @employment_history = employment_histories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:employment_histories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create employment_history" do
    assert_difference('EmploymentHistory.count') do
      post :create, employment_history: { employer: @employment_history.employer, employment_status: @employment_history.employment_status, nature: @employment_history.nature, office_tel_no: @employment_history.office_tel_no, period_covered: @employment_history.period_covered, position: @employment_history.position }
    end

    assert_redirected_to employment_history_path(assigns(:employment_history))
  end

  test "should show employment_history" do
    get :show, id: @employment_history
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @employment_history
    assert_response :success
  end

  test "should update employment_history" do
    patch :update, id: @employment_history, employment_history: { employer: @employment_history.employer, employment_status: @employment_history.employment_status, nature: @employment_history.nature, office_tel_no: @employment_history.office_tel_no, period_covered: @employment_history.period_covered, position: @employment_history.position }
    assert_redirected_to employment_history_path(assigns(:employment_history))
  end

  test "should destroy employment_history" do
    assert_difference('EmploymentHistory.count', -1) do
      delete :destroy, id: @employment_history
    end

    assert_redirected_to employment_histories_path
  end
end
