require "pry"
class User
  attr_accessor :email
  @@user_count = 0

  def initialize(name, email_to_save)
    @name = name.capitalize
    @email = email_to_save
    @@user_count = @@user_count + 1
    greet
  end

  def say_hello_to_someone(first_name)
    puts "Bonjour, #{first_name} !"
  end

  def show_itself
    print "Voici l'instance : "
    puts self
  end

  def update_email(email_to_update)
    @email = email_to_update
  end

  def read_email
    return @email
  end

  def read_mastercard
    return @mastercard
  end

  def self.count
    return @@user_count
  end

private

  def greet
    puts "Bonjour, #{@name} !"
  end
end


julie = User.new("JuLiE", "julie@gmail.com")
jean = User.new("jEAn", "jean@gmail.com")

julie.greet
