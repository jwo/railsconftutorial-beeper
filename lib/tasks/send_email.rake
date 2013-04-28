namespace :beeper do

  desc "Send test email to yourself"
  task :test_email => :environment do
    Beeper::Email.notify "This is a test notification"
  end

end
