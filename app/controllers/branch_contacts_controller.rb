class BranchContactsController < ApplicationController
  before_action :set_branch_contact, only: [:show, :edit, :update, :destroy]

  # GET /branch_contacts
  # GET /branch_contacts.json
  def index
    @branch_contacts = BranchContact.all
  end

  # GET /branch_contacts/1
  # GET /branch_contacts/1.json
  def show
  end

  # GET /branch_contacts/new
  def new
    @branch_contact = BranchContact.new
  end

  # GET /branch_contacts/1/edit
  def edit
  end

  # POST /branch_contacts
  # POST /branch_contacts.json
  def create
    @branch_contact = BranchContact.new(branch_contact_params)

    respond_to do |format|
      if @branch_contact.save
        format.html { redirect_to @branch_contact, notice: 'Branch contact was successfully created.' }
        format.json { render :show, status: :created, location: @branch_contact }
      else
        format.html { render :new }
        format.json { render json: @branch_contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /branch_contacts/1
  # PATCH/PUT /branch_contacts/1.json
  def update
    respond_to do |format|
      if @branch_contact.update(branch_contact_params)
        format.html { redirect_to @branch_contact, notice: 'Branch contact was successfully updated.' }
        format.json { render :show, status: :ok, location: @branch_contact }
      else
        format.html { render :edit }
        format.json { render json: @branch_contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /branch_contacts/1
  # DELETE /branch_contacts/1.json
  def destroy
    @branch_contact.destroy
    respond_to do |format|
      format.html { redirect_to branch_contacts_url, notice: 'Branch contact was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_branch_contact
      @branch_contact = BranchContact.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def branch_contact_params
      params.require(:branch_contact).permit(:branch_id, :contacttype_id, :contact)
    end
end
