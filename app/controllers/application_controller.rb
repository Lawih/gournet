class ApplicationController < ActionController::Base

  include Pundit
  protect_from_forgery with: :exception
  before_action :configure_new_column_to_devise_permitted_parameters, if: :devise_controller?
  before_action :set_locale

  def default_url_options(options={})
      { locale: I18n.locale }
  end

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

private

  def user_not_authorized(exception)
    #policy_name = exception.policy.class.to_s.underscore
    #flash[:error] = t "#{policy_name}.#{exception.query}", scope: "pundit", default: :default
    #redirect_to (request.referrer || root_path)
    redirect_to root_path, alert: I18n.t('user_not_authorized')
  end

  #Insert parameters of user
  def configure_new_column_to_devise_permitted_parameters
    registration_params = [:name, :lastname,:birthday, :phone, :picture, :username, :email,
    	:password, :password_confirmation]
      registration_paramss = [:name, :lastname,:birthday, :picture, :username, :email,
      :password, :password_confirmation]
    if params[:action] == 'create'
      devise_parameter_sanitizer.permit(:sign_up, keys: registration_paramss)
    elsif params[:action] == 'update'
      devise_parameter_sanitizer.permit(:account_update, keys: registration_params)
    end
  end

  def set_locale
    if cookies[:gournet_locale] && I18n.available_locales.include?(cookies[:gournet_locale].to_sym)
      l = cookies[:gournet_locale].to_sym
    end
    if params[:locale]
      if I18n.available_locales.map(&:to_s).include?(params[:locale])
        l = params[:locale]
      else
        flash.now[:alert] = "The #{params[:locale]} translation is not available."
        l = I18n.default_locale
      end
      cookies.permanent[:gournet_locale] = l
    end
    I18n.locale = l
  end
end
