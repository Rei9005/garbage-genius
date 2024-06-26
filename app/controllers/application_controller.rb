class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  def after_sign_in_path_for(resource)
    spots_path(current_user)
  end

  before_action :configure_permitted_parameters, if: :devise_controller?


  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    # devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])

    # For additional in app/views/devise/registrations/edit.html.erb
     devise_parameter_sanitizer.permit(:account_update, keys: [:spot_id])
 #=======================================================================
     # For additional fields in app/views/devise/registrations/new.html.erb
     devise_parameter_sanitizer.permit(:sign_up, keys: [ :name, :line_id, :address])
     # For additional fields in app/views/devise/registrations/edit.html.erb
     devise_parameter_sanitizer.permit(:account_update, keys: [ :name, :line_id, :address])
  end
end
