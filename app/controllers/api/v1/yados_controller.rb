class Api::V1::YadosController < Api::BaseController
  def index
    @yados = Yado.all.order(:id)
    render json: @yados
  end

  def show
    @yado = Yado.find(params[:id])
    render json: @yado
  end
end
