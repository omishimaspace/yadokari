class Api::V1::YadosController < Api::BaseController
  def index
    @yados = Yado.all
    render json: @yados
  end
end
