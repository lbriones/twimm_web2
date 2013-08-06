require 'test_helper'

class LogtransfersControllerTest < ActionController::TestCase
  setup do
    @logtransfer = logtransfers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:logtransfers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create logtransfer" do
    assert_difference('Logtransfer.count') do
      post :create, logtransfer: { fromaccount: @logtransfer.fromaccount, message: @logtransfer.message, monto: @logtransfer.monto, status: @logtransfer.status, toaccount: @logtransfer.toaccount }
    end

    assert_redirected_to logtransfer_path(assigns(:logtransfer))
  end

  test "should show logtransfer" do
    get :show, id: @logtransfer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @logtransfer
    assert_response :success
  end

  test "should update logtransfer" do
    put :update, id: @logtransfer, logtransfer: { fromaccount: @logtransfer.fromaccount, message: @logtransfer.message, monto: @logtransfer.monto, status: @logtransfer.status, toaccount: @logtransfer.toaccount }
    assert_redirected_to logtransfer_path(assigns(:logtransfer))
  end

  test "should destroy logtransfer" do
    assert_difference('Logtransfer.count', -1) do
      delete :destroy, id: @logtransfer
    end

    assert_redirected_to logtransfers_path
  end
end
