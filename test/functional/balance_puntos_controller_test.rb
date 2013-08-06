require 'test_helper'

class BalancePuntosControllerTest < ActionController::TestCase
  setup do
    @balance_punto = balance_puntos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:balance_puntos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create balance_punto" do
    assert_difference('BalancePunto.count') do
      post :create, balance_punto: { credit: @balance_punto.credit, debit: @balance_punto.debit, motivo_id: @balance_punto.motivo_id, usuario_id: @balance_punto.usuario_id }
    end

    assert_redirected_to balance_punto_path(assigns(:balance_punto))
  end

  test "should show balance_punto" do
    get :show, id: @balance_punto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @balance_punto
    assert_response :success
  end

  test "should update balance_punto" do
    put :update, id: @balance_punto, balance_punto: { credit: @balance_punto.credit, debit: @balance_punto.debit, motivo_id: @balance_punto.motivo_id, usuario_id: @balance_punto.usuario_id }
    assert_redirected_to balance_punto_path(assigns(:balance_punto))
  end

  test "should destroy balance_punto" do
    assert_difference('BalancePunto.count', -1) do
      delete :destroy, id: @balance_punto
    end

    assert_redirected_to balance_puntos_path
  end
end
