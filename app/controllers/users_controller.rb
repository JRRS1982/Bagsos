# frozen_string_literal: true

class UsersController < ApplicationController
def show
  @profile_owner = User.find_by(id: params[:id])
  @tasks = Task.where(user_id: @profile_owner.id).reverse
end

end
