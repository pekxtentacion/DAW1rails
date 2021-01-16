class ComplementosController < ApplicationController
  before_action :set_complemento, only: [:show, :edit, :update, :destroy]

  # GET /complementos
  # GET /complementos.json
  def index
    @complementos = Complemento.all
  end

  # GET /complementos/1
  # GET /complementos/1.json
  def show
  end

  # GET /complementos/new
  def new
    @complemento = Complemento.new
  end

  # GET /complementos/1/edit
  def edit
  end

  # POST /complementos
  # POST /complementos.json
  def create
    @complemento = Complemento.new(complemento_params)

    respond_to do |format|
      if @complemento.save
        format.html { redirect_to @complemento, notice: 'Complemento was successfully created.' }
        format.json { render :show, status: :created, location: @complemento }
      else
        format.html { render :new }
        format.json { render json: @complemento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /complementos/1
  # PATCH/PUT /complementos/1.json
  def update
    respond_to do |format|
      if @complemento.update(complemento_params)
        format.html { redirect_to @complemento, notice: 'Complemento was successfully updated.' }
        format.json { render :show, status: :ok, location: @complemento }
      else
        format.html { render :edit }
        format.json { render json: @complemento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /complementos/1
  # DELETE /complementos/1.json
  def destroy
    @complemento.destroy
    respond_to do |format|
      format.html { redirect_to complementos_url, notice: 'Complemento was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_complemento
      @complemento = Complemento.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def complemento_params
      params.require(:complemento).permit(:nombre, :precio, :source)
    end
end
