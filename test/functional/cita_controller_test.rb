require 'test_helper'

class CitaControllerTest < ActionController::TestCase
  setup do
    @citum = cita(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cita)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create citum" do
    assert_difference('Citum.count') do
      post :create, :citum => @citum.attributes
    end

    assert_redirected_to citum_path(assigns(:citum))
  end

  test "should show citum" do
    get :show, :id => @citum
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @citum
    assert_response :success
  end

  test "should update citum" do
    put :update, :id => @citum, :citum => @citum.attributes
    assert_redirected_to citum_path(assigns(:citum))
  end

  test "should destroy citum" do
    assert_difference('Citum.count', -1) do
      delete :destroy, :id => @citum
    end

    assert_redirected_to cita_path
  end
end
