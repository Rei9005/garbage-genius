class UsersController < ApplicationController
  before_action :authenticate_user!

  def edit
  end

  def dash
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
