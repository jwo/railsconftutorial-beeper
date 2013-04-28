require 'spec_helper'

describe Alarm do

  it {should validate_presence_of(:service) }
  it {should validate_presence_of(:severity) }
  it {should ensure_inclusion_of(:severity).in_array(['warning', 'critical']) }


  describe "#start_alarm" do
    let(:alarm) do
      Alarm.create do |a|
        a.service = "apple web store"
      end
    end

    it "should yield to what is called" do

      Alarm.should_receive(:fake_message).with(alarm)

      alarm.start_alarm do |a|
        Alarm.fake_message(a)
      end

    end

    it "should not error if I don't pass anything" do
      expect{
        alarm.start_alarm
      }.to_not raise_error
    end
  end
end
