class PostresController < ApplicationController
  before_action :set_postre, only: [:show, :edit, :update, :destroy]

  # GET /postres
  # GET /postres.json
  def index
    @postres = Postre.all
  end

  # GET /postres/1
  # GET /postres/1.json
  def show
  end

  # GET /postres/new
  def new
    @postre = Postre.new
  end

  # GET /postres/1/edit
  def edit
  end

  # POST /postres
  # POST /postres.json
  def create
    @postre = Postre.new(postre_params)

    respond_to do |format|
      if @postre.save
        format.html { redirect_to @postre, notice: 'Postre was successfully created.' }
        format.json { render :show, status: :created, location: @postre }
      else
        format.html { render :new }
        format.json { render json: @postre.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /postres/1
  # PATCH/PUT /postres/1.json
  def update
    respond_to do |format|
      if @postre.update(postre_params)
        format.html { redirect_to @postre, notice: 'Postre was successfully updated.' }
        format.json { render :show, status: :ok, location: @postre }
      else
        format.html { render :edit }
        format.json { render json: @postre.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /postres/1
  # DELETE /postres/1.json
  def destroy
    @postre.destroy
    respond_to do |format|
      format.html { redirect_to postres_url, notice: 'Postre was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_postre
      @postre = Postre.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def postre_params
      params.require(:postre).permit(:nombre, :precio, :source)
    end
end
