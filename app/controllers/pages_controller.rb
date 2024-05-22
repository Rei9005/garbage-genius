class PagesController < ApplicationController
  def home

    @spot_deets = current_user.spot.spot_dates
    console

  end
end
