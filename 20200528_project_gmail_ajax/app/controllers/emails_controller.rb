class EmailsController < ApplicationController
  def index
    @emails = Email.all.reverse
  end

  def create
    @email =  Email.create(object: Faker::Book.title, body: Faker::Lorem.paragraph)
    respond_to do |format|
      format.html {
        flash[:notice] = "You've got a new email!"
        redirect_to emails_path
      }
      format.js
    end
  end

  def show
    @email = Email.find(params[:id])
    @email.update_attribute(:read, params[:read])
    respond_to do |format|
      format.html {
        redirect_to email_path(@email.id)
      }
      format.js
    end
  end

  def destroy
    @email = Email.find(params[:id])
    @email.destroy
    respond_to do |format|
      format.html {
        redirect_to root_path
      }
      format.js
    end
  end
end
