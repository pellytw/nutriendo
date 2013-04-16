require 'test_helper'

class InventarioMenajesControllerTest < ActionController::TestCase
  setup do
    @inventario_menaje = inventario_menajes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:inventario_menajes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create inventario_menaje" do
    assert_difference('InventarioMenaje.count') do
      post :create, inventario_menaje: { escuela_id: @inventario_menaje.escuela_id, quien_modifica: @inventario_menaje.quien_modifica, ultima_modificacion: @inventario_menaje.ultima_modificacion }
    end

    assert_redirected_to inventario_menaje_path(assigns(:inventario_menaje))
  end

  test "should show inventario_menaje" do
    get :show, id: @inventario_menaje
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @inventario_menaje
    assert_response :success
  end

  test "should update inventario_menaje" do
    put :update, id: @inventario_menaje, inventario_menaje: { escuela_id: @inventario_menaje.escuela_id, quien_modifica: @inventario_menaje.quien_modifica, ultima_modificacion: @inventario_menaje.ultima_modificacion }
    assert_redirected_to inventario_menaje_path(assigns(:inventario_menaje))
  end

  test "should destroy inventario_menaje" do
    assert_difference('InventarioMenaje.count', -1) do
      delete :destroy, id: @inventario_menaje
    end

    assert_redirected_to inventario_menajes_path
  end
end
