def signup
  puts "Choose your password"
  print "> "
  signup_password = gets.chomp
  return signup_password
end


def login
  puts "What is your password"
  print "> "
  login_password = gets.chomp
  return login_password
end


def welcome_screen
  puts "Welcome to The Hacking Project"
end


def verify(signup_password, login_password)
  if signup_password == login_password
    welcome_screen
  else
    result = login
    verify(signup_password, result)
  end
end


def perform
  signup_password = signup
  login_password = login
  verify(signup_password, login_password)
end

perform

