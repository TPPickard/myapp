require 'test_helper'

class HomeControllersControllerTest < ActionController::TestCase
  setup do
    @home_controller = home_controllers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:home_controllers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create home_controller" do
    assert_difference('HomeController.count') do
      post :create, :home_controller => @home_controller.attributes
    end

    assert_redirected_to home_controller_path(assigns(:home_controller))
  end

  test "should show home_controller" do
    get :show, :id => @home_controller.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @home_controller.to_param
    assert_response :success
  end

  test "should update home_controller" do
    put :update, :id => @home_controller.to_param, :home_controller => @home_controller.attributes
    assert_redirected_to home_controller_path(assigns(:home_controller))
  end

  test "should destroy home_controller" do
    assert_difference('HomeController.count', -1) do
      delete :destroy, :id => @home_controller.to_param
    end

    assert_redirected_to home_controllers_path
  end
end
