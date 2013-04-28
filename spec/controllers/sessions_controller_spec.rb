require 'spec_helper'

describe SessionsController do

  describe "#create" do

    before(:each) do
      session[:authenticated] = nil
    end

    it "should authenticate with correct password" do
      post 'create', password: 'supersecret'
      subject.should be_authenticated
      response.should be_redirect
    end

    it "should not authenticate with incorrect password" do
      post 'create', password: 'nope-supersecret'
      subject.should_not be_authenticated
      response.should render_template('new')
    end
  end

  describe "#destroy" do
    it "should log out and redirect" do
      session[:authenticated] = true
      delete 'destroy'
      subject.should_not be_authenticated
      response.should be_redirect
    end
  end
end
