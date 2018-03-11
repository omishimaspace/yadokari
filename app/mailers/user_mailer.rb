class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.reservation.subject
  #
  def notice_reservation(reservation)
    @reservation = reservation
    mail to: ENV['FROM_ADDRESS'], subject: "[yadokari]#{@reservation.name}様よりご予約がありました"
  end

  def temporary_reservation(reservation)
    @reservation = reservation
    mail to: reservation.email, subject: 'オオミシマスペースの予約申込みありがとうございます'
  end
end
