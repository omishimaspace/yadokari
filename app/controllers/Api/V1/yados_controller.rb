class Api::V1::YadosController < Api::Base
  def index
    @yados = Yado.all
  end
end
