require 'test_helper'

class KbsControllerTest < ActionController::TestCase
  setup do
    @kb = kbs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:kbs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create kb" do
    assert_difference('Kb.count') do
      post :create, :kb => @kb.attributes
    end

    assert_redirected_to kb_path(assigns(:kb))
  end

  test "should show kb" do
    get :show, :id => @kb.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @kb.to_param
    assert_response :success
  end

  test "should update kb" do
    put :update, :id => @kb.to_param, :kb => @kb.attributes
    assert_redirected_to kb_path(assigns(:kb))
  end

  test "should destroy kb" do
    assert_difference('Kb.count', -1) do
      delete :destroy, :id => @kb.to_param
    end

    assert_redirected_to kbs_path
  end
end
