require 'test_helper'

class LineamientosControllerTest < ActionController::TestCase
  setup do
    @lineamiento = lineamientos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lineamientos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lineamiento" do
    assert_difference('Lineamiento.count') do
      post :create, lineamiento: { nombre: @lineamiento.nombre }
    end

    assert_redirected_to lineamiento_path(assigns(:lineamiento))
  end

  test "should show lineamiento" do
    get :show, id: @lineamiento
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lineamiento
    assert_response :success
  end

  test "should update lineamiento" do
    patch :update, id: @lineamiento, lineamiento: { nombre: @lineamiento.nombre }
    assert_redirected_to lineamiento_path(assigns(:lineamiento))
  end

  test "should destroy lineamiento" do
    assert_difference('Lineamiento.count', -1) do
      delete :destroy, id: @lineamiento
    end

    assert_redirected_to lineamientos_path
  end
end
