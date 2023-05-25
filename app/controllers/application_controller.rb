class ApplicationController < ActionController::API
  include ActionController::Cookies
  before_action :authorized

  def encode_token(payload)
    JWT::encode(payload, "dGgxNTE1dGgzbTA1dHMzY3VyM3BhNTV3MHJkM3YzUg")
  end

  def auth_header
    request.headers["Authorization"]
  end

  def decode_token
    jwt = nil
     if auth_header
       token = auth_header.split(' ')[1]
      begin
       jwt = JWT::decode(token, "dGgxNTE1dGgzbTA1dHMzY3VyM3BhNTV3MHJkM3YzUg", true, algorithm: 'HS256')
      rescue JWT::DecodeError
        nil
      end
     end
  end

  def current_user
    if decode_token
      user_id = decode_token[0]['user_id']
      user = User.find_by(id: user_id)
    end
  end

  def logged_in?
    !!current_user
  end

  def authorized
    render json: { message: 'Login/SignUp to continue' }, status: :unauthorized unless logged_in?
  end

end
