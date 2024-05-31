class HelpRequestsController < ApplicationController
  def create
    spot_date = SpotDate.find(params[:spot_date_id])
    help_request = HelpRequest.new
    help_request.asker = current_user
    help_request.spot_date = spot_date
    help_request.save
    @help_request = HelpRequest.new
    @spot_details = current_user.spot.spot_dates
    redirect_to dash_path
  end

  def update
    help_request = HelpRequest.find(params[:id])
    help_request.helper = request_params[:request_status] == 'accepted' ? current_user : nil
    help_request.update(request_params)
    
  end

  private


  def request_params
    params.require(:help_request).permit(:request_status)
  end

end
