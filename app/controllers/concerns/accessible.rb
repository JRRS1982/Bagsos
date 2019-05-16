module Accessible
  extend ActiveSupport::Concern
  included do
    before_action :check_user
  end

  protected
  def check_user
    if current_volunteer
      flash.clear
      # if you have rails_admin. You can redirect anywhere really
      redirect_to(rails_volunteer.tasks_path) && return
    elsif current_beneficiary
      flash.clear
      # The authenticated root path can be defined in your routes.rb in: devise_scope :user do...
      redirect_to(authenticated_beneficiary_root_path) && return
      # Where should we send beneficiaries? - To the profile path?
    end
  end
end