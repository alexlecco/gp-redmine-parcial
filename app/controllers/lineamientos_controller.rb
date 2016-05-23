class LineamientosController < ApplicationController
  before_action :set_lineamiento, only: [:show, :edit, :update, :destroy]

  # GET /lineamientos
  # GET /lineamientos.json
  def index
    @lineamientos = Lineamiento.all
  end

  # GET /lineamientos/1
  # GET /lineamientos/1.json
  def show
  end

  # GET /lineamientos/new
  def new
    @lineamiento = Lineamiento.new
  end

  # GET /lineamientos/1/edit
  def edit
  end

  # POST /lineamientos
  # POST /lineamientos.json
  def create
    @lineamiento = Lineamiento.new(lineamiento_params)

    respond_to do |format|
      if @lineamiento.save
        format.html { redirect_to @lineamiento, notice: 'Lineamiento was successfully created.' }
        format.json { render :show, status: :created, location: @lineamiento }
      else
        format.html { render :new }
        format.json { render json: @lineamiento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lineamientos/1
  # PATCH/PUT /lineamientos/1.json
  def update
    respond_to do |format|
      if @lineamiento.update(lineamiento_params)
        format.html { redirect_to @lineamiento, notice: 'Lineamiento was successfully updated.' }
        format.json { render :show, status: :ok, location: @lineamiento }
      else
        format.html { render :edit }
        format.json { render json: @lineamiento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lineamientos/1
  # DELETE /lineamientos/1.json
  def destroy
    @lineamiento.destroy
    respond_to do |format|
      format.html { redirect_to lineamientos_url, notice: 'Lineamiento was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lineamiento
      @lineamiento = Lineamiento.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lineamiento_params
      params.require(:lineamiento).permit(:nombre)
    end
end
