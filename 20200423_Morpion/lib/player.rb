class Player
  attr_accessor :name, :token, :wins

  def initialize(name, token)
    @name = name
    @token = token
    @wins = 0
  end
end
