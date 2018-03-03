class Api::V1::ReservationsController < Api::BaseController
  before_action :set_yado

  def create
    @reservation = @yado.reservations.new(reservation_params)
    if @reservation.save
      render json: {token: @reservation.token}, status: :created
    else
      render json: @reservation.errors, status: :bad_request
    end
  end


  def update
    @reservation = Reservation.find(params[:id])
    respond_to do |format|
      if @reservation.update(reservation_params)
        format.html {redirect_to @reservation, notice: 'Reservation was successfully updated.'}
        format.json {render :show, status: :ok, location: @reservation}
      else
        format.html {render :edit}
        format.json {render json: @reservation.errors, status: :unprocessable_entity}
      end
    end
  end

  def destroy
    @reservation.destroy
    respond_to do |format|
      format.html {redirect_to reservations_url, notice: 'Reservation was successfully destroyed.'}
      format.json {head :no_content}
    end
  end

  private

  def set_yado
    @yado = Yado.find(params[:yado_id])
  end

  def reservation_params
    params.require(:reservation).permit(:name, :email, :tel, :check_in_on, :check_out_on, :check_in_time, :mens_number, :womens_number, :purpose_of_use, :payment_method, :coupon, :note, :status, :token)
  end

end
