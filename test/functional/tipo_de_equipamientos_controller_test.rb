require 'test_helper'

class TipoDeEquipamientosControllerTest < ActionController::TestCase
  setup do
    @tipo_de_equipamiento = tipo_de_equipamientos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipo_de_equipamientos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipo_de_equipamiento" do
    assert_difference('TipoDeEquipamiento.count') do
      post :create, tipo_de_equipamiento: { descripcion: @tipo_de_equipamiento.descripcion, nombre: @tipo_de_equipamiento.nombre }
    end

    assert_redirected_to tipo_de_equipamiento_path(assigns(:tipo_de_equipamiento))
  end

  test "should show tipo_de_equipamiento" do
    get :show, id: @tipo_de_equipamiento
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipo_de_equipamiento
    assert_response :success
  end

  test "should update tipo_de_equipamiento" do
    put :update, id: @tipo_de_equipamiento, tipo_de_equipamiento: { descripcion: @tipo_de_equipamiento.descripcion, nombre: @tipo_de_equipamiento.nombre }
    assert_redirected_to tipo_de_equipamiento_path(assigns(:tipo_de_equipamiento))
  end

  test "should destroy tipo_de_equipamiento" do
    assert_difference('TipoDeEquipamiento.count', -1) do
      delete :destroy, id: @tipo_de_equipamiento
    end

    assert_redirected_to tipo_de_equipamientos_path
  end
end
