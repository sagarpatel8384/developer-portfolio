class SessionsController < ApplicationController
  before_action :already_logged_in, only: [:new, :create]

  def new
  end

  def create
    @user = User.find_by_email(params[:email])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      flash[:success] = "You've successfully signed in."
      redirect_to root_path
    else
      flash.now[:error] = 'Email or Password is incorrect'
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end
