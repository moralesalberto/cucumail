class Mailer < ActionMailer::Base
  default from: "from@example.com"

  def notification(subject, content)
    @content = content
    mail(:to => 'ynes@ynes.com', :subject => subject)
  end
end
