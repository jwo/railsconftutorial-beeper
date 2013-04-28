class ApplicationController < ActionController::Base

  def authenticated?
    session[:authenticated] == true
  end
end
