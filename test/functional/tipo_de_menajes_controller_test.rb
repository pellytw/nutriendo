require 'test_helper'

class TipoDeMenajesControllerTest < ActionController::TestCase
  setup do
    @tipo_de_menaje = tipo_de_menajes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipo_de_menajes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipo_de_menaje" do
    assert_difference('TipoDeMenaje.count') do
      post :create, tipo_de_menaje: { descripcion: @tipo_de_menaje.descripcion, nombre: @tipo_de_menaje.nombre }
    end

    assert_redirected_to tipo_de_menaje_path(assigns(:tipo_de_menaje))
  end

  test "should show tipo_de_menaje" do
    get :show, id: @tipo_de_menaje
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipo_de_menaje
    assert_response :success
  end

  test "should update tipo_de_menaje" do
    put :update, id: @tipo_de_menaje, tipo_de_menaje: { descripcion: @tipo_de_menaje.descripcion, nombre: @tipo_de_menaje.nombre }
    assert_redirected_to tipo_de_menaje_path(assigns(:tipo_de_menaje))
  end

  test "should destroy tipo_de_menaje" do
    assert_difference('TipoDeMenaje.count', -1) do
      delete :destroy, id: @tipo_de_menaje
    end

    assert_redirected_to tipo_de_menajes_path
  end
end
