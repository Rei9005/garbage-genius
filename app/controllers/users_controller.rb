class UsersController < ApplicationController
  before_action :authenticate_user!

  def edit
     @user
   end


   def settings
    raise
     if current_user.update(user_params)
       redirect_to dash_path, notice: 'Profile was successfully updated.'
     else
       render :edit, status: :uprocessable_entity
     end
   end


  def dash

    # This is needed for the calendar function
    @spot_details = current_user.spot.spot_dates
    @user_spot_id = current_user.spot_id
    @help_request = HelpRequest.new
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

    private

   def set_user
     @user = current_user
   end

   def user_params
     params.require(:user).permit(:email, :name, :address, :evening_alert, :evening_alert_at, :morning_alert, :morning_alert_at )
   end

end
