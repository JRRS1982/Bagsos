class RegistrationsController < ApplicationController
  protected

  def after_sign_up_path_for(users)
    '/tasks'
  end

end
