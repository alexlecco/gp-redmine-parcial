require 'test_helper'

class AccionsControllerTest < ActionController::TestCase
  setup do
    @accion = accions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:accions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create accion" do
    assert_difference('Accion.count') do
      post :create, accion: { nombre: @accion.nombre, objetivo_id: @accion.objetivo_id, porcentaje_realizado: @accion.porcentaje_realizado }
    end

    assert_redirected_to accion_path(assigns(:accion))
  end

  test "should show accion" do
    get :show, id: @accion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @accion
    assert_response :success
  end

  test "should update accion" do
    patch :update, id: @accion, accion: { nombre: @accion.nombre, objetivo_id: @accion.objetivo_id, porcentaje_realizado: @accion.porcentaje_realizado }
    assert_redirected_to accion_path(assigns(:accion))
  end

  test "should destroy accion" do
    assert_difference('Accion.count', -1) do
      delete :destroy, id: @accion
    end

    assert_redirected_to accions_path
  end
end
