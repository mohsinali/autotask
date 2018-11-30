class UserMailer < ApplicationMailer
  default from: 'from@example.com'
  layout 'mailer'

  def test_email
    mail(to: 'mohsin@attribes.com', subject: 'Welcome to My Awesome Site')
  end
end
