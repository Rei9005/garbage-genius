class SpotsController < ApplicationController
  def index
    @user = current_user

    @spots = Spot.all
    # The `geocoded` scope filters only spots with coordinates
    @markers = @spots.geocoded.map do |spot|
      {
        lat: spot.latitude,
        lng: spot.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: { spot: spot}),
        marker_html: spot.visited_today? ? render_to_string(partial: "truck") : render_to_string(partial: "pin")

      }
    end
    @user_marker = [
      { lat: current_user.latitude,
        lng: current_user.longitude,
        marker_html: render_to_string(partial: "marker")
      }
      ]

  end


  def show
  end
end
