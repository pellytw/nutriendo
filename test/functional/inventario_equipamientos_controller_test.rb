require 'test_helper'

class InventarioEquipamientosControllerTest < ActionController::TestCase
  setup do
    @inventario_equipamiento = inventario_equipamientos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:inventario_equipamientos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create inventario_equipamiento" do
    assert_difference('InventarioEquipamiento.count') do
      post :create, inventario_equipamiento: { escuela_id: @inventario_equipamiento.escuela_id, quien_modifica: @inventario_equipamiento.quien_modifica, ultima_modificacion: @inventario_equipamiento.ultima_modificacion }
    end

    assert_redirected_to inventario_equipamiento_path(assigns(:inventario_equipamiento))
  end

  test "should show inventario_equipamiento" do
    get :show, id: @inventario_equipamiento
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @inventario_equipamiento
    assert_response :success
  end

  test "should update inventario_equipamiento" do
    put :update, id: @inventario_equipamiento, inventario_equipamiento: { escuela_id: @inventario_equipamiento.escuela_id, quien_modifica: @inventario_equipamiento.quien_modifica, ultima_modificacion: @inventario_equipamiento.ultima_modificacion }
    assert_redirected_to inventario_equipamiento_path(assigns(:inventario_equipamiento))
  end

  test "should destroy inventario_equipamiento" do
    assert_difference('InventarioEquipamiento.count', -1) do
      delete :destroy, id: @inventario_equipamiento
    end

    assert_redirected_to inventario_equipamientos_path
  end
end
