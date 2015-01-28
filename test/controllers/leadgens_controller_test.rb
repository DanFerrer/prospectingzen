require 'test_helper'

class LeadgensControllerTest < ActionController::TestCase
  setup do
    @leadgen = leadgens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:leadgens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create leadgen" do
    assert_difference('Leadgen.count') do
      post :create, leadgen: { companies: @leadgen.companies, deadline: @leadgen.deadline, leadsper: @leadgen.leadsper }
    end

    assert_redirected_to leadgen_path(assigns(:leadgen))
  end

  test "should show leadgen" do
    get :show, id: @leadgen
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @leadgen
    assert_response :success
  end

  test "should update leadgen" do
    patch :update, id: @leadgen, leadgen: { companies: @leadgen.companies, deadline: @leadgen.deadline, leadsper: @leadgen.leadsper }
    assert_redirected_to leadgen_path(assigns(:leadgen))
  end

  test "should destroy leadgen" do
    assert_difference('Leadgen.count', -1) do
      delete :destroy, id: @leadgen
    end

    assert_redirected_to leadgens_path
  end
end
