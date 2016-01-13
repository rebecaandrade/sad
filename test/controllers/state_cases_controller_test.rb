require 'test_helper'

class StateCasesControllerTest < ActionController::TestCase
  setup do
    @state_case = state_cases(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:state_cases)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create state_case" do
    assert_difference('StateCase.count') do
      post :create, state_case: { punctuation: @state_case.punctuation, state: @state_case.state }
    end

    assert_redirected_to state_case_path(assigns(:state_case))
  end

  test "should show state_case" do
    get :show, id: @state_case
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @state_case
    assert_response :success
  end

  test "should update state_case" do
    patch :update, id: @state_case, state_case: { punctuation: @state_case.punctuation, state: @state_case.state }
    assert_redirected_to state_case_path(assigns(:state_case))
  end

  test "should destroy state_case" do
    assert_difference('StateCase.count', -1) do
      delete :destroy, id: @state_case
    end

    assert_redirected_to state_cases_path
  end
end
