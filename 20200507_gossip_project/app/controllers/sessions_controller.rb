class SessionsController < ApplicationController
  include ApplicationHelper

  def new
    @user = User.new
  end

  def create
     @user = User.find_by(email: params[:email])

    if @user && @user.authenticate(params[:password])
      log_in(@user)
      flash[:success] = "Account created !"
      redirect_to gossips_path
    else
      flash.now[:danger] = 'Invalid email/password combination'
      redirect_to root_path
    end
  end

  def destroy
    session.delete(:user_id)
    redirect_to root_path
  end
end

