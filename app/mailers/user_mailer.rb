class UserMailer < ActionMailer::Base
  default :from => "robconery@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.welcome.subject
  #
  def welcome(email)
    @email = email
    mail :to => email, :subject => "Welcome to Tekpub!"
  end
end
