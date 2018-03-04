class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.reservation.subject
  #
  def reservation(reservation)
    @reservation = reservation

    mail to: reservation.email, subject: 'オオミシマスペース仮予約受付'
  end
end
