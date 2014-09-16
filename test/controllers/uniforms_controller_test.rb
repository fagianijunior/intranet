require 'test_helper'

class UniformsControllerTest < ActionController::TestCase
  setup do
    @uniform = uniforms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:uniforms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create uniform" do
    assert_difference('Uniform.count') do
      post :create, uniform: { entry: @uniform.entry, expiration: @uniform.expiration, uniform_piece_group_id: @uniform.uniform_piece_group_id, uniform_piece_type_id: @uniform.uniform_piece_type_id, user_id: @uniform.user_id }
    end

    assert_redirected_to uniform_path(assigns(:uniform))
  end

  test "should show uniform" do
    get :show, id: @uniform
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @uniform
    assert_response :success
  end

  test "should update uniform" do
    patch :update, id: @uniform, uniform: { entry: @uniform.entry, expiration: @uniform.expiration, uniform_piece_group_id: @uniform.uniform_piece_group_id, uniform_piece_type_id: @uniform.uniform_piece_type_id, user_id: @uniform.user_id }
    assert_redirected_to uniform_path(assigns(:uniform))
  end

  test "should destroy uniform" do
    assert_difference('Uniform.count', -1) do
      delete :destroy, id: @uniform
    end

    assert_redirected_to uniforms_path
  end
end
