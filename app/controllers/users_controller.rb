class UsersController < ApplicationController

  def update
    @user = current_user
    @profile = @user.profile

    @profile.serial_code = params[:user][:profile][:serial_code]

    @user.save!
    @profile.save!

    redirect_to root_path
  end

end
