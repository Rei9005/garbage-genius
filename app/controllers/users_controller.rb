class UsersController < ApplicationController

  before_action :authenticate_user!

  def edit
  end

  def update
  end

  def dash

    # This is needed for the calendar function
    @spot_deets = current_user.spot.spot_dates


  end


end
