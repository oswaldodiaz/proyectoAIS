require 'test_helper'

class HistoriaMedicasControllerTest < ActionController::TestCase
  setup do
    @historia_medica = historia_medicas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:historia_medicas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create historia_medica" do
    assert_difference('HistoriaMedica.count') do
      post :create, :historia_medica => @historia_medica.attributes
    end

    assert_redirected_to historia_medica_path(assigns(:historia_medica))
  end

  test "should show historia_medica" do
    get :show, :id => @historia_medica
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @historia_medica
    assert_response :success
  end

  test "should update historia_medica" do
    put :update, :id => @historia_medica, :historia_medica => @historia_medica.attributes
    assert_redirected_to historia_medica_path(assigns(:historia_medica))
  end

  test "should destroy historia_medica" do
    assert_difference('HistoriaMedica.count', -1) do
      delete :destroy, :id => @historia_medica
    end

    assert_redirected_to historia_medicas_path
  end
end
