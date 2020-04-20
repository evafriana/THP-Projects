class Event
  attr_accessor :duration, :title
  attr_reader :start_date, :attendees

  def initialize(start_date, duration, title, attendees = [])
    @start_date = Time.parse(start_date)
    @duration = duration
    @title = title
    @attendees = attendees
  end

  def start_datee(x)
    @start_date = Time.parse(x)
  end

  def add_attendees(arr)
     arr.each { |y| @attendees << y }
  end

  def postpone_24h
    @start_date = @start_date + 24*60*60
  end

  def end_date
    @start_date + @duration*60
  end

  def is_past?
    end_date < Time.now
  end

  def is_future?
    !is_past?
  end

  def is_soon?
    soon = @start_date - 30*60
    Time.now >= soon && Time.now <= @start_date
  end

  def to_s
    puts ">Titre : #{@title}"
    puts ">Date de début : #{@start_date.strftime('%Y-%m-%d %H:%M')}"
    puts ">Durée : #{@duration/60}h#{@duration%60}"
    puts ">Invités : #{@attendees.join(', ')}"
  end
end
