class ProfilesController < ApplicationController
  def edit
    @profile = Profile.find(params[:id])
  end

  def update
  end
end
