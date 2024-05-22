class SpotsController < ApplicationController
  def index

    @spots = Spot.all
    # The `geocoded` scope filters only spots with coordinates
    @markers = @spots.geocoded.map do |spot|
      {
        lat: spot.latitude,
        lng: spot.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: { spot: spot})
      }
    end
    @user_marker = [{ lat: current_user.latitude,
                      lng: current_user.longitude,
                      info_window2_html: render_to_string(partial: "info_window2", locals: { current_user: current_user}),
                      marker_html: render_to_string(partial: "marker")
                   }]
  end

  def show
  end
end
