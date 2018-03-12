class Api::V1::YadosController < Api::BaseController
  def index
    @yados = Yado.all.order(:id)
    render json: @yados.map{|y|y.as_json(except: %i(url note created_at updated_at))}
  end

  def show
    @yado = Yado.friendly.find(params[:id])
    render json: @yado.as_json(except: %i(created_at updated_at))
  end
end
