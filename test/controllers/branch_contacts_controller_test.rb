require 'test_helper'

class BranchContactsControllerTest < ActionController::TestCase
  setup do
    @branch_contact = branch_contacts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:branch_contacts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create branch_contact" do
    assert_difference('BranchContact.count') do
      post :create, branch_contact: { branch_id: @branch_contact.branch_id, contact: @branch_contact.contact, contacttype_id: @branch_contact.contacttype_id }
    end

    assert_redirected_to branch_contact_path(assigns(:branch_contact))
  end

  test "should show branch_contact" do
    get :show, id: @branch_contact
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @branch_contact
    assert_response :success
  end

  test "should update branch_contact" do
    patch :update, id: @branch_contact, branch_contact: { branch_id: @branch_contact.branch_id, contact: @branch_contact.contact, contacttype_id: @branch_contact.contacttype_id }
    assert_redirected_to branch_contact_path(assigns(:branch_contact))
  end

  test "should destroy branch_contact" do
    assert_difference('BranchContact.count', -1) do
      delete :destroy, id: @branch_contact
    end

    assert_redirected_to branch_contacts_path
  end
end
