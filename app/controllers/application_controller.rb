class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_new_column_to_devise_permitted_parameters, if: :devise_controller?

  private
  #Insert parameters of user
  def configure_new_column_to_devise_permitted_parameters
    registration_params = [:name, :lastname,:birthday, :phone, :picture, :username, :email, 
    	:password, :password_confirmation]
    if params[:action] == 'create'
      devise_parameter_sanitizer.permit(:sign_up, keys: registration_params)
    elsif params[:action] == 'update'
      devise_parameter_sanitizer.permit(:account_update, keys: registration_params)
    end
  end

end
