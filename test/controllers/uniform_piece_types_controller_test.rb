require 'test_helper'

class UniformPieceTypesControllerTest < ActionController::TestCase
  setup do
    @uniform_piece_type = uniform_piece_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:uniform_piece_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create uniform_piece_type" do
    assert_difference('UniformPieceType.count') do
      post :create, uniform_piece_type: { name: @uniform_piece_type.name, picture: @uniform_piece_type.picture }
    end

    assert_redirected_to uniform_piece_type_path(assigns(:uniform_piece_type))
  end

  test "should show uniform_piece_type" do
    get :show, id: @uniform_piece_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @uniform_piece_type
    assert_response :success
  end

  test "should update uniform_piece_type" do
    patch :update, id: @uniform_piece_type, uniform_piece_type: { name: @uniform_piece_type.name, picture: @uniform_piece_type.picture }
    assert_redirected_to uniform_piece_type_path(assigns(:uniform_piece_type))
  end

  test "should destroy uniform_piece_type" do
    assert_difference('UniformPieceType.count', -1) do
      delete :destroy, id: @uniform_piece_type
    end

    assert_redirected_to uniform_piece_types_path
  end
end
