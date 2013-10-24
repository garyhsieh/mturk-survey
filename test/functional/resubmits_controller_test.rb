require 'test_helper'

class ResubmitsControllerTest < ActionController::TestCase
  setup do
    @resubmit = resubmits(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:resubmits)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create resubmit" do
    assert_difference('Resubmit.count') do
      post :create, resubmit: {  }
    end

    assert_redirected_to resubmit_path(assigns(:resubmit))
  end

  test "should show resubmit" do
    get :show, id: @resubmit
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @resubmit
    assert_response :success
  end

  test "should update resubmit" do
    put :update, id: @resubmit, resubmit: {  }
    assert_redirected_to resubmit_path(assigns(:resubmit))
  end

  test "should destroy resubmit" do
    assert_difference('Resubmit.count', -1) do
      delete :destroy, id: @resubmit
    end

    assert_redirected_to resubmits_path
  end
end
