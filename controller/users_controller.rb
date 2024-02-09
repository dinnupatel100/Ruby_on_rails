class UsersController < ApplicationController
  before_action :set_user, only: [:edit, :show, :destroy, :update] 
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to action: :index
    else
      render new
    end
  end

  def edit
  end

  def update
    @user.update(user_params)
    redirect_to action: :index
  end

  def show
  end
 
  def destroy
    @user.delete
  end
  private

  def user_params
    params.require(:user).permit(:name, :email, :phno)
  end

  def set_user
    @user = User.find(params[:id])
  end
end
