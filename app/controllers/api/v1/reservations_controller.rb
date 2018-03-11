class Api::V1::ReservationsController < Api::BaseController
  before_action :set_yado, except: :show

  def show
    reservation = Reservation.find_by(token: params[:token])
    if reservation.present?
      render json: reservation.as_json(except: %i(token created_at updated_at room_id), methods: :yado_name)
    else
      render json: '', status: :not_found
    end
  end

  def create
    reservation = @yado.reservations.new(reservation_params)
    if reservation.save
      UserMailer.notice_reservation(reservation).deliver_now
      UserMailer.temporary_reservation(reservation).deliver_now
      render json: {token: reservation.token}, status: :created
    else
      render json: reservation.errors, status: :bad_request
    end
  end

  private

  def set_yado
    @yado = Yado.friendly.find(params[:yado_id])
  end

  def reservation_params
    params.require(:reservation).permit(:name, :email, :tel, :check_in_on, :check_out_on, :check_in_time, :men_number, :women_number, :purpose_of_use, :payment_method, :coupon, :note, :status, :token)
  end

end
