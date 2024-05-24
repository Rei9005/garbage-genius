class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :line ]
  skip_before_action :verify_authenticity_token, only: [:line]
  def home

  end

  def line
    p response
    head :ok
  end
end
