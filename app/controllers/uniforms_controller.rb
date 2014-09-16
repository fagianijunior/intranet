class UniformsController < ApplicationController
  before_action :signed_in_user
  before_action :set_uniform, only: [:show, :edit, :update, :destroy]

  # GET /uniforms
  # GET /uniforms.json
  def index
    @uniforms = Uniform.all
  end

  # GET /uniforms/1
  # GET /uniforms/1.json
  def show
  end

  # GET /uniforms/new
  def new
    @uniform = Uniform.new
  end

  # GET /uniforms/1/edit
  def edit
  end

  # POST /uniforms
  # POST /uniforms.json
  def create
    @uniform = Uniform.new(uniform_params)

    respond_to do |format|
      if @uniform.save
        format.html { redirect_to @uniform, notice: 'Uniform was successfully created.' }
        format.json { render :show, status: :created, location: @uniform }
      else
        format.html { render :new }
        format.json { render json: @uniform.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /uniforms/1
  # PATCH/PUT /uniforms/1.json
  def update
    respond_to do |format|
      if @uniform.update(uniform_params)
        format.html { redirect_to @uniform, notice: 'Uniform was successfully updated.' }
        format.json { render :show, status: :ok, location: @uniform }
      else
        format.html { render :edit }
        format.json { render json: @uniform.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /uniforms/1
  # DELETE /uniforms/1.json
  def destroy
    @uniform.destroy
    respond_to do |format|
      format.html { redirect_to uniforms_url, notice: 'Uniform was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_uniform
      @uniform = Uniform.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def uniform_params
      params.require(:uniform).permit(:uniform_piece_type_id, :uniform_piece_group_id, :entry, :expiration, :user_id)
    end

    def signed_in_user
      redirect_to new_session_path unless signed_in?
    end
end
