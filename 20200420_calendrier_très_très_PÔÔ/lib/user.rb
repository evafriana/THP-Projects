class User
  attr_accessor :email, :age
  @@all_users = []
  def initialize(email, age)
    @email = email
    @age = age
    @@all_users << self
  end

  def self.all
    return @@all_users
  end

  def self.find_by_email(an_email)
    result = self.all.select do |user| user.email == an_email end.first
    if result.nil?
       "aucun utilisateur n'a cet email"
    else
      result
    end
  end
end

