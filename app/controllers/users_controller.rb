class UsersController < ApplicationController
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
# end



  def dash

    # This is needed for the calendar function
    @spot_deets = current_user.spot.spot_dates
    @user_spot_id = current_user.spot_id

  end

  def update
    @user = User.find(params[:id])
    @user.spot_id = params[:spot_id]
    if @user.save
      redirect_to dash_path
    else
      render 'spots', status: :uprocessable_entity
    end

  end


end
