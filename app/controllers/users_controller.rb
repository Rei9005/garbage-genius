class UsersController < ApplicationController
  before_action :authenticate_user!
  # before_action :set_user, only: [:edit, :update]

  # def edit
  #   @user
  # end

  # def update
  #   if @user.update(user_params)
  #     redirect_to edit_user_path(@user), notice: 'Profile was successfully updated.'
  #   else
  #     render :edit
  #   end
  # end

  # private

  # def set_user
  #   @user = current_user
  # end

  # def user_params
  #   params.require(:user).permit(:email, :password, :password_confirmation, :name, :address, :morning_alert, :evening_alert)
  # end
end