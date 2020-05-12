class ApplicationController < ActionController::Base
  include ApplicationHelper

  def authenticate_user
    unless session[:user_id] && current_user
      flash[:danger] = "Please log in."
      redirect_to root_path
    end
  end
end

