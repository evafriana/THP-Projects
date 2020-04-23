class Player
  attr_accessor :name, :life_points

  def initialize(name)
    @name = name
    @life_points = 10
  end

  def show_state
    if @life_points > 0
      "#{@name} a #{@life_points} points de vie"
    else
      "#{@name} est mort"
    end
  end

  def gets_damage(x)
    @life_points = @life_points - x
  end

  def attacks(player)
    puts "Le joueur #{self.name} attaque le joueur #{player.name}"
    dmg = compute_damage
    puts "et lui inflige #{dmg} points de dommages"
    player.gets_damage(dmg)
  end

  def compute_damage
    return rand(1..6)
  end
end

class HumanPlayer < Player
  attr_accessor :weapon_level

  def initialize(name)
    @name = name
    @life_points = 100
    @weapon_level = 1
  end

  def show_state
    "#{@name} a #{@life_points} points de vie et une arme de niveau #{@weapon_level}"
  end

  def compute_damage
    rand(1..6) * @weapon_level
  end

  def search_weapon
    new_weapon = rand(1..6)
    puts "Tu as trouvé une arme de niveau #{new_weapon}"
    if new_weapon > @weapon_level
      puts "Youhou ! elle est meilleure que ton arme actuelle : tu la prends."
      puts ""
      @weapon_level = new_weapon
    else
      puts "M@*#$... elle n'est pas mieux que ton arme actuelle..."
      puts ""
    end
  end

  def search_health_pack
    health_pack = rand(1..6)
    if health_pack == 1
      puts "Tu n'as rien trouvé... "
      puts ""
    elsif health_pack <= 5
      puts "Bravo, tu as trouvé un pack de +50 points de vie !"
      puts ""
      @life_points += 50
    else
      puts "Waow, tu as trouvé un pack de +80 points de vie !"
      puts ""
      @life_points += 80
    end
  end
end

