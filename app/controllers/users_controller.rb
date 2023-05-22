class UsersController < ApplicationController

  def create
    user = User.create(user_params)
    if user.valid?
      render json: user, status: :created
    else
      render json: {error: user.errors.full_messages}, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.permit(:name, :email, :password, :telephone_no, :role)
  end

end
