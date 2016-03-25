class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by_email(params[:email])
    if @user && @user.authenticate(params[:password])
      flash[:success] = "You've successfully signed in."
      redirect_to @user
    else
      flash.now[:error] = 'Email or Password is incorrect'
      render :new
    end
  end
end
