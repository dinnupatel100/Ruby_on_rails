class ApplicationController < ActionController::Base
  protect_from_forgery
  before_action :authorized

  def encode_token(payload)
    # payload[:exp] = (2).minutes.from_now.to_i
    JWT.encode(payload, Rails.application.credentials[:secret_key_base])
  end

  def decoded_token
      header = request.headers['Authorization']
      if header
        token = header.split(" ")[1]
        begin
            JWT.decode(token, '69dad4a9b883474a7365f6a7ac4ca8a4b53b8fa43d13abac4f24f743832c7fcd2e94d3f1ae5df86b5f39554b3aa61305fc4c4e66c0ab3def0a6d363eb931162c')
        rescue JWT::DecodeError
            nil
        end
      end
  end

  def current_user 
    if decoded_token
        user_id = decoded_token[0]['user_id']
        @user = User.find_by(id: user_id)
    end
  end

  def authorized
    unless !!current_user
    render json: { message: 'Please log in' }, status: :unauthorized
    end
  end

end