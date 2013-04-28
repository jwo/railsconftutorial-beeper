namespace :alarm do

  desc "report an error. set service=SERVICENAME"
  task :report => :environment do

    service = extract_service_name

    response = connection.post do |req|
        req.url '/alarms'
        req.headers['Content-Type'] = 'application/json'
        req.body = { service: service }.to_json
      end

    json_response = JSON.parse(response.body)

    if json_response['status'] == true
      puts "Alarm has been reported"
    else
      puts "Cool, alarm is closed"
    end

  end

  desc "close an error. set service=SERVICENAME"
  task :close => :environment do
    service = extract_service_name

    response = connection.delete do |req|
      req.url "/alarms/#{service}"
      req.headers['Content-Type'] = 'application/json'
    end

    if response.status == 204
      puts "Cool, alarm is closed"
    else
      puts "Unknown response: #{response.inspect}"
    end
  end

  def extract_service_name
    ENV.fetch("service") do
      # service was not found
      raise "Please send in the service with `service=SERVICENAME`"
    end
  end

  def connection
    Faraday.new(url: "http://0.0.0.0:3000")
  end

end
