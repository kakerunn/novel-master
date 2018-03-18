class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :set_current_user
  before_action :configure_permitted_parameters, if: :devise_controller?

 def set_current_user
   @current_user = User.find_by(id: session[:user_id])
 end

 def configure_permitted_parameters
     devise_parameter_sanitizer.permit(:sign_up, keys: [:image])
   end
end
