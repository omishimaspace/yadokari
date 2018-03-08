# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/user_mailer/reservation
  def notice_reservation
    UserMailer.notice_reservation(Reservation.last)
  end

  def temporary_reservation
    UserMailer.temporary_reservation(Reservation.last)
  end

end
