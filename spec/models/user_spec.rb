require_relative '../../app/models/user.rb'
require 'rspec/autorun'

describe User do

  it "should pass with right pw" do
    User.authenticate("supersecret").should_not be_nil
  end

  it "should not pass with wrong pw" do
    User.authenticate("wrongzo").should be_nil
  end
end
