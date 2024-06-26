class UsersController < ApplicationController
  before_action :authenticate_user!

  def edit
     @user
   end


  def settings
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
    @asker_help_requests = HelpRequest.where(asker: current_user) #issue ishere. give it a thought
    @neighbor_help_requests = HelpRequest.where.not(asker: current_user) # where.not is the select anything but the specified value
  end

  def calendar
    @spot_details = current_user.spot.spot_dates
    @help_request = HelpRequest.new
  end


  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    @user.spot = Spot.find(params[:spot_id]) if params[:spot_id]
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
     params.require(:user).permit(:email, :name, :address, :evening_alert, :evening_alert_at, :morning_alert, :morning_alert_at, :spot_id )
   end

end
