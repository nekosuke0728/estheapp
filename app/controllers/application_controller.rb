class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
 
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:membership_number, :name, :email])
      devise_parameter_sanitizer.permit(:sign_in, keys: [:membership_number, :login])
    end

end
