class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @admin_events = Event.where(admin_id: @user.id)
    (@admin_events.size > 0)? (@admin = true) : (@admin = false)
  end


  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
      if @user.update(user_params)
        flash[:success] = 'Bienvenue parmi nous !'
        render 'show'
      else
        render 'edit'
      end
  end


  private

    def user_params
      user_params = params.require(:user).permit(:first_name, :last_name, :description)
    end

    def authenticate_user
      unless current_user
        flash[:danger] = "Please log in."
        redirect_to new_user_session_url
      end
    end

    def is_current_user?(user)
    current_user.id == user.id ? true : false
    end
end
