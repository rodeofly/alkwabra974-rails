require 'test_helper'

class TentativesControllerTest < ActionController::TestCase
  setup do
    @tentative = tentatives(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tentatives)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tentative" do
    assert_difference('Tentative.count') do
      post :create, tentative: { beurk: @tentative.beurk, chapter: @tentative.chapter, game_id: @tentative.game_id, level: @tentative.level, score: @tentative.score, shots: @tentative.shots, success: @tentative.success, user_id: @tentative.user_id }
    end

    assert_redirected_to tentative_path(assigns(:tentative))
  end

  test "should show tentative" do
    get :show, id: @tentative
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tentative
    assert_response :success
  end

  test "should update tentative" do
    patch :update, id: @tentative, tentative: { beurk: @tentative.beurk, chapter: @tentative.chapter, game_id: @tentative.game_id, level: @tentative.level, score: @tentative.score, shots: @tentative.shots, success: @tentative.success, user_id: @tentative.user_id }
    assert_redirected_to tentative_path(assigns(:tentative))
  end

  test "should destroy tentative" do
    assert_difference('Tentative.count', -1) do
      delete :destroy, id: @tentative
    end

    assert_redirected_to tentatives_path
  end
end
