class UniformPieceTypesController < ApplicationController
  before_action :signed_in_user
  before_action :set_uniform_piece_type, only: [:show, :edit, :update, :destroy]

  # GET /uniform_piece_types
  # GET /uniform_piece_types.json
  def index
    @uniform_piece_types = UniformPieceType.all
  end

  # GET /uniform_piece_types/1
  # GET /uniform_piece_types/1.json
  def show
  end

  # GET /uniform_piece_types/new
  def new
    @uniform_piece_type = UniformPieceType.new
  end

  # GET /uniform_piece_types/1/edit
  def edit
  end

  # POST /uniform_piece_types
  # POST /uniform_piece_types.json
  def create
    @uniform_piece_type = UniformPieceType.new(uniform_piece_type_params)

    respond_to do |format|
      if @uniform_piece_type.save
        format.html { redirect_to @uniform_piece_type, notice: 'Uniform piece type was successfully created.' }
        format.json { render :show, status: :created, location: @uniform_piece_type }
      else
        format.html { render :new }
        format.json { render json: @uniform_piece_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /uniform_piece_types/1
  # PATCH/PUT /uniform_piece_types/1.json
  def update
    respond_to do |format|
      if @uniform_piece_type.update(uniform_piece_type_params)
        format.html { redirect_to @uniform_piece_type, notice: 'Uniform piece type was successfully updated.' }
        format.json { render :show, status: :ok, location: @uniform_piece_type }
      else
        format.html { render :edit }
        format.json { render json: @uniform_piece_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /uniform_piece_types/1
  # DELETE /uniform_piece_types/1.json
  def destroy
    @uniform_piece_type.destroy
    respond_to do |format|
      format.html { redirect_to uniform_piece_types_url, notice: 'Uniform piece type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_uniform_piece_type
      @uniform_piece_type = UniformPieceType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def uniform_piece_type_params
      params.require(:uniform_piece_type).permit(:name, :picture)
    end

    def signed_in_user
      redirect_to new_session_path unless signed_in?
    end
end
