class AttendancesController < ApplicationController
  def new
    @event = Event.find(params[:event_id])
    @attendance = Attendance.new
  end

  def create
    @event = Event.find(params[:event_id])
    @amount = @event.price
    @attendance = Attendance.new(event: @event, user: current_user)

    customer = Stripe::Customer.create({
      email: params[:stripeEmail],
      source: params[:stripeToken],
    })

    charge = Stripe::Charge.create({
      customer: customer.id,
      amount: @amount * 100,
      description: 'Rails Stripe customer',
      currency: 'eur',
    })

    if @attendance.save
      @attendance.update(stripe_customer_id: customer.id)
      flash[:success] = "Enregistered!"
      redirect_to event_path(@event)
    else
      render 'new'
    end

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end

  def index
    @event = Event.find(params[:event_id])
  end

end
