class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home

    @spot_deets = current_user.spot.spot_dates
    console

  end
end
