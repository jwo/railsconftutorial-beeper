module Beeper
  class SMS
    def self.notify text
      Twilio::REST::Client
        .new(Beeper.twilio_sid,
             Beeper.twilio_auth_token)
        .account
        .sms
        .messages
        .create(
          from: "+1#{Beeper.twilio_phone_number}",
          to: Beeper.your_phone_number,
          body: text
        )
    end
  end
end
