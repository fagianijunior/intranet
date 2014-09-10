class UserContactsController < ApplicationController
  before_action :set_user_contact, only: [:show, :edit, :update, :destroy]

  # GET /user_contacts
  # GET /user_contacts.json
  def index
    @user_contacts = UserContact.all
  end

  # GET /user_contacts/1
  # GET /user_contacts/1.json
  def show
  end

  # GET /user_contacts/new
  def new
    @user_contact = UserContact.new
  end

  # GET /user_contacts/1/edit
  def edit
  end

  # POST /user_contacts
  # POST /user_contacts.json
  def create
    @user_contact = UserContact.new(user_contact_params)

    respond_to do |format|
      if @user_contact.save
        format.html { redirect_to @user_contact, notice: 'User contact was successfully created.' }
        format.json { render :show, status: :created, location: @user_contact }
      else
        format.html { render :new }
        format.json { render json: @user_contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_contacts/1
  # PATCH/PUT /user_contacts/1.json
  def update
    respond_to do |format|
      if @user_contact.update(user_contact_params)
        format.html { redirect_to @user_contact, notice: 'User contact was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_contact }
      else
        format.html { render :edit }
        format.json { render json: @user_contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_contacts/1
  # DELETE /user_contacts/1.json
  def destroy
    @user_contact.destroy
    respond_to do |format|
      format.html { redirect_to user_contacts_url, notice: 'User contact was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_contact
      @user_contact = UserContact.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_contact_params
      params.require(:user_contact).permit(:user_id, :contacttype_id, :contact)
    end
end
