class EventsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]

  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def show
    @event = Event.find(params[:id])
    @start_event = @event.start_date.strftime("Start on %m/%d/%Y, at %I:%M%p")
    @end_event = (@event.start_date + (@event.duration * 60)).strftime("End on %m/%d/%Y, at %I:%M%p")
    Attendance.create(event: @event, user: current_user)
    if @event.save
      flash[:success] = "L'événement a été crée!"
      render 'show'
    else
      render 'new'
    end
  end

  def create

  end

  private

  def event_params
    event_params = params.require(:event).permit(:title, :description, :start_date, :duration, :price, :location)
  end

end
