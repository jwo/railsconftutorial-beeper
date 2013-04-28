module Beeper
  class Email
    def self.notify text
      BeeperNotification.notify(Beeper.your_email_address, text).deliver
    end
  end
end
