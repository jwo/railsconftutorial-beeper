class BeeperNotification < ActionMailer::Base
  default from: "beeper@example.com"

  def notify(email, text)
    @text = text
    mail to: email, subject: "Beeper Notification"
  end
end
