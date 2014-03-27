class ApplicationController < ActionController::Base

  before_filter :configure_permitted_parameters, if: :devise_controller?

  #fields user can update with devise registration#edit
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:account_update) { |u|
      u.permit(:password, :username, :password_confirmation, :current_password)
    }
  end

  def forem_user
    current_user
  end

  helper_method :forem_user

  protect_from_forgery with: :exception

  # before_action :authenticate_user!

end
