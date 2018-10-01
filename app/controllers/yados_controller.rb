class YadosController < ApplicationController
  before_action :set_yado, only: [:show, :edit, :update, :destroy]

  def index
    redirect_to yado_path(Yado.find_by_short_name('os'))
    # @yados = Yado.all
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

    if @yado.save
      redirect_to @yado, notice: 'Yado was successfully created.'
    else
      render :new
    end
  end

  def update
    if @yado.update(yado_params)
      redirect_to @yado, notice: 'Yado was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @yado.destroy
    redirect_to yados_url, notice: 'Yado was successfully destroyed.'
  end

  private

  def yado_params
    params.require(:yado).permit(:name, :short_name)
  end
end
