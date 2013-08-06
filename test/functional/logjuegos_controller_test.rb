require 'test_helper'

class LogjuegosControllerTest < ActionController::TestCase
  setup do
    @logjuego = logjuegos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:logjuegos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create logjuego" do
    assert_difference('Logjuego.count') do
      post :create, logjuego: { juego_id: @logjuego.juego_id, loser: @logjuego.loser, player1: @logjuego.player1, player2: @logjuego.player2, points_involved: @logjuego.points_involved, winner: @logjuego.winner }
    end

    assert_redirected_to logjuego_path(assigns(:logjuego))
  end

  test "should show logjuego" do
    get :show, id: @logjuego
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @logjuego
    assert_response :success
  end

  test "should update logjuego" do
    put :update, id: @logjuego, logjuego: { juego_id: @logjuego.juego_id, loser: @logjuego.loser, player1: @logjuego.player1, player2: @logjuego.player2, points_involved: @logjuego.points_involved, winner: @logjuego.winner }
    assert_redirected_to logjuego_path(assigns(:logjuego))
  end

  test "should destroy logjuego" do
    assert_difference('Logjuego.count', -1) do
      delete :destroy, id: @logjuego
    end

    assert_redirected_to logjuegos_path
  end
end
