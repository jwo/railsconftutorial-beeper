class AlarmsController < ApplicationController
  respond_to :json

  before_filter :only => [:create] do
    @alarm = Alarm.find_by_service(params[:service]) || Alarm.create do |alarm|
      alarm.service  = params[:service]
      alarm.severity = 'warning'
    end
  end

  def create
    @alarm.start_alarm
    respond_with @alarm
  end

  def destroy
    @alarm = Alarm.find_by_service! params[:id]
    @alarm.stop_alarm
    respond_with @alarm
  end

end
