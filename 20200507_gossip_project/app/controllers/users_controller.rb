class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index

  end
  def new
    @user = User.new
  end

  def show

  end

  def create
    @user = User.new(user_params)
    @user.city = City.first

    if @user.save
      log_in(@user)
      flash[:success] = "Account created !"
      redirect_to gossips_path
    else
      redirect_to new_user_path
    end
  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

  def set_user
    @gossip = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :age, :email, :description, :password, :password_confirmation)
  end
end
