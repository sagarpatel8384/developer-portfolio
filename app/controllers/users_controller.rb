class UsersController < ApplicationController
  before_action :already_logged_in, only: [:new, :create]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      @user.create_profile
      session[:user_id] = @user.id
      flash[:success] = 'You\'ve successfully registered.'
      binding.pry
      redirect_to edit_profile_path(@user.profile)
    else
      flash.now[:error] = 'Hmmm. Looks like something went wrong.'
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(
      :name, :email, :password, :username
    )
  end
end
