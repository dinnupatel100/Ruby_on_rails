class UsersController < ApplicationController
  skip_before_action :authorized, only: [:create, :login]

  def create
    @user = User.new(user_params)
    if @user.save
      @token = encode_token(user_id: @user.id)
      render json: {
        user: @user,
        token: @token
      },status: :created
    else
      render json: @user.errors.full_messages
    end
  end

  def login
    @user = User.find_by!(username: login_params[:username])
    if @user.authenticate(login_params[:password])
        @token = encode_token(user_id: @user.id)
        render json: {
            user: @user,
            token: @token
        }, status: :accepted
    else
        render json: {message: 'Incorrect password'}, status: :unauthorized
    end
  end

  def info
    render json: current_user, status: :ok
  end

  private

  def user_params
    params.require(:user).permit(:username, :password)
  end

  def login_params 
    params.permit(:username, :password)
  end

end
