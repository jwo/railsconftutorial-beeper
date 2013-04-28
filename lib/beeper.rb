module Beeper
  mattr_accessor :twilio_phone_number
  @@twilio_phone_number = ""

  mattr_accessor :twilio_sid
  @@twilio_sid = ""

  mattr_accessor :twilio_auth_token
  @@twilio_auth_token= ""

  mattr_accessor :your_phone_number
  @@your_phone_number= ""

  mattr_accessor :your_email_address
  @@our_email_address= ""

  def self.config
    yield self
  end
end
