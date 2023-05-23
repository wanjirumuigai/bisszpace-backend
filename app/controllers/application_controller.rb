class ApplicationController < ActionController::API
  before_action :authorized

  @hmac_secret = "th1515th3m05ts3cur3pa55w0rd3v3R"

  def encode_token(payload)
    JWT.encode(payload, @hmac_secret, 'HS256')
  end

  def auth_header
    request.headers['Authorization']
  end

  def decode_token
     if auth_header
       token = auth_header.split(' ')[1]
       begin
        JWT.decode(token, @hmac_secret, true, {algorithm: 'HS256'})
       rescue JWT::DecodeError
        nil
       end
     end
  end

  def current_user
    if decode_token
      user_id = decode_token[0]['user_id']
      @user = User.find_by(id: user_id)
    end
  end

  def logged_in?
    !!current_user
  end

  def authorized
    render json: { message: 'Login/SignUp to continue' }, status: :unauthorized unless logged_in?
  end

end
