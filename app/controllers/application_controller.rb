# frozen_string_literal: true

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[name user_type])
  end


  def after_sign_in_path_for(user)
    if current_user.user_type == 'beneficiary'
      "/users/#{current_user.id}"
    else
      '/tasks'
    end
  end
end
