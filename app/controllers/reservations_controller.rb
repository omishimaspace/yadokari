class ReservationsController < ApplicationController
  before_action :set_yado
  before_action :set_reservation, only: [:show, :edit, :update, :destroy]

  def index
    @reservations = @yado.reservations.page(params[:page])
  end

  def show
  end

  def new
    @reservation = @yado.reservations.build
  end

  def edit
  end

  def create
    @reservation = @yado.reservations.new(reservation_params)

    if @reservation.save
      redirect_to [@yado, @reservation], notice: 'Reservation was successfully created.'
    else
      render :new
    end
  end

  def update
    if @reservation.update(reservation_params)
      redirect_to [@yado, @reservation], notice: 'Reservation was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @reservation.destroy
    redirect_to yado_reservations_url(@yado), notice: 'Reservation was successfully destroyed.'
  end

  private

  def set_reservation
    @reservation = @yado.reservations.find(params[:id])
  end

  def reservation_params
    params.require(:reservation).permit(:name, :email, :tel, :check_in_on, :check_out_on, :check_in_time, :men_number, :women_number, :purpose_of_use, :payment_method, :coupon, :note, :status, :token)
  end
end
