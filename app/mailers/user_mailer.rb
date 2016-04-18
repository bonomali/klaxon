class UserMailer < ApplicationMailer
  layout 'user_mailer'

  def login_email(user: nil)
    token = LoginToken.create(user: user)
    @url = token_session_url(token: token)
    @user = user

    mail(to: @user.email, subject: 'Klaxon Login')
  end

  def welcome_email(user: nil)
    token = LoginToken.create(user: user)
    @url = token_session_url(token: token)
    @user = user

    mail(to: @user.email, subject: 'Welcome to Klaxon!')
  end

end
