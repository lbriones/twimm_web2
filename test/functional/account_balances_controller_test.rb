require 'test_helper'

class AccountBalancesControllerTest < ActionController::TestCase
  setup do
    @account_balance = account_balances(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:account_balances)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create account_balance" do
    assert_difference('AccountBalance.count') do
      post :create, account_balance: { account_id: @account_balance.account_id, credit: @account_balance.credit, debit: @account_balance.debit, motivo_id: @account_balance.motivo_id, value: @account_balance.value }
    end

    assert_redirected_to account_balance_path(assigns(:account_balance))
  end

  test "should show account_balance" do
    get :show, id: @account_balance
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @account_balance
    assert_response :success
  end

  test "should update account_balance" do
    put :update, id: @account_balance, account_balance: { account_id: @account_balance.account_id, credit: @account_balance.credit, debit: @account_balance.debit, motivo_id: @account_balance.motivo_id, value: @account_balance.value }
    assert_redirected_to account_balance_path(assigns(:account_balance))
  end

  test "should destroy account_balance" do
    assert_difference('AccountBalance.count', -1) do
      delete :destroy, id: @account_balance
    end

    assert_redirected_to account_balances_path
  end
end
