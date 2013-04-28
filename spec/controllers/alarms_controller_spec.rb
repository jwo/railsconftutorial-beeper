require 'spec_helper'

describe AlarmsController do

  before(:each) do
    Alarm.destroy_all
  end

  describe "#create" do
    it "should create an alarm" do
      expect{
        post 'create', service: "email"
      }.to change(Alarm, :count).by(1)
    end

    it "should not create an alarm if one exists" do
      expect{
        post 'create', service: "email"
        post 'create', service: "email"
      }.to change(Alarm, :count).by(1)
    end
  end

  describe "#destroy" do

    before do
      Alarm.create do |a|
        a.service = 'redis'
        a.severity = 'critical'
      end
    end

    it "should turn the alarm off" do
      delete 'destroy', id: 'redis'
      Alarm.find_by_service!('redis').status.should be_false
    end
  end
end
