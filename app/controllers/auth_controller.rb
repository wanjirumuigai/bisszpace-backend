class AuthController < ApplicationController
  skip_before_action :authorized, only: :create

  def create
     user = User.find_by(email: params[:email])
     if user&.authenticate(params[:password])
       token = encode_token({user_id: user.id})
       render json: {user: UserSerializer.new(user), jwt: token}, status: :accepted
     else
      render json: {error: "Invalid email or password"}, status: :unauthorized
     end
  end

  private

  def login_params
    params.permit(:email, :password)
  end
end
