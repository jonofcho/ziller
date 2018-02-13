class ReservationMailer < ApplicationMailer
  default from: 'jonofcho@gmail.com'

  def reservation_email(reservation)
    @user = reservation
    @url  = 'http://example.com/login'
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end
end
