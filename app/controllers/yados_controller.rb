class YadosController < ApplicationController
  before_action :set_yado, only: [:show, :edit, :update, :destroy]

  def index
    @yados = Yado.all
  end

  def show
  end

  def new
    @yado = Yado.new
  end

  def edit
  end

  def create
    @yado = Yado.new(yado_params)

    respond_to do |format|
      if @yado.save
        format.html { redirect_to @yado, notice: 'Yado was successfully created.' }
        format.json { render :show, status: :created, location: @yado }
      else
        format.html { render :new }
        format.json { render json: @yado.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @yado.update(yado_params)
        format.html { redirect_to @yado, notice: 'Yado was successfully updated.' }
        format.json { render :show, status: :ok, location: @yado }
      else
        format.html { render :edit }
        format.json { render json: @yado.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @yado.destroy
    respond_to do |format|
      format.html { redirect_to yados_url, notice: 'Yado was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_yado
      @yado = Yado.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def yado_params
      params.require(:yado).permit(:name, :short_name)
    end
end
