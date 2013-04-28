namespace :beeper do

  desc "Send test SMS text to yourself"
  task :test_sms => :environment do
    Beeper::SMS.notify "This is a test notification"
  end

end
