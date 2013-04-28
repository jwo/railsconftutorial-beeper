class SessionsController < ApplicationController

  def new
    flash.now[:notice] = "Please Log In"
  end

  def create
    if User.authenticate(params[:password])
      session[:authenticated] = true
      redirect_to root_path
    else
      flash.now[:error] = "Sorry, that's not right"
      render :new
    end
  end

  def destroy
    session.delete :authenticated
    redirect_to root_path
  end
end
