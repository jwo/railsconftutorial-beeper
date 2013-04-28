namespace :beeper do

  namespace :test do

    desc "Send test SMS text to yourself"
    task :sms => :environment do
      Beeper::SMS.notify "This is a test notification"
    end

    desc "Send test email to yourself"
    task :email => :environment do
      Beeper::Email.notify "This is a test notification"
    end
  end

end
