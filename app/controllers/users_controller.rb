# controller for users
class UsersController < ApplicationController
  private

  def permitted_params
    params.require(:user)
      .permit(:id,
              :login,
              :email,
              :password,
              :password_confirmation,
              :created_at,
              :updated_at)
  end
end
