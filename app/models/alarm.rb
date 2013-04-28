class Alarm < ActiveRecord::Base
  validates_presence_of :service
  validates_presence_of :severity
  validates_inclusion_of :severity, in: %w(warning critical)

  def start_alarm
    self.status = true
    save
    yield if block_given?
  end

  def stop_alarm
    self.status = false
    save!
    yield if block_given?
  end
end
