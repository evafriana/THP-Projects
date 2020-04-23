class Game
  attr_accessor :human_player, :enemies, :players_left, :enemies_in_sight, :my_score

  def initialize(human_player)
    @human_player = HumanPlayer.new(human_player)
    @enemies_in_sight = []
    (1..4).each { |n| @enemies_in_sight << Player.new("player#{rand(1..9999)}") }
    @players_left = 10
    @my_score = 0
  end

  def kill_player(player)
    # @enemies_in_sight.each do |enemy|
    #   @enemies_in_sight.delete(enemy) if enemy.name == player
    # end
     @enemies_in_sight.delete(player)
     @my_score += 1
  end

  def is_still_ongoing?
    @human_player.life_points > 0 && !@enemies_in_sight.empty?
  end

  def new_players_in_sight
    if @enemies_in_sight.count >= @players_left
      puts "Tous les joueurs sont déjà en vue"
    else
      add_players
    end
  end

  def add_players
    result = roll_dice
    puts ""
    if result == 1
      puts "Aucun nouveau joueur adverse n'arrive"
    elsif result <=4
      @enemies_in_sight << Player.new("player#{rand(1..9999)}")
      puts "Un nouveau joueur adverse arrive"
    else
      2.times { @enemies_in_sight << Player.new("player#{rand(5..9999)}") }
      puts "Deux nouveaux joueurs adverses arrivent"
    end
  end

  def roll_dice
    rand(1..6)
  end

  def show_players
    puts @human_player.show_state
    puts "Il reste #{@enemies_in_sight.count} enemies à affronter."
  end

  def menu
    puts ""
    puts "Voici ton état :"
    puts @human_player.show_state
    puts ""
    puts "Quelle action veux-tu effectuer ?"
    puts ""
    puts "a - chercher une meilleure arme"
    puts "s - chercher à se soigner"
    puts ""
    puts "Ou attaquer un joueur en vue :"
    @enemies_in_sight.each_with_index do |enemy, index|
      puts "#{index+1} - #{enemy.show_state}"
    end
    puts ""
    puts "> "
    gets.chomp
  end

  def search_enemy(choice)
    @enemies_in_sight.select { |enemy| enemy.name == choice }.first
  end

  def menu_choice(input)
    if input == "a" || input == "A"
      @human_player.search_weapon
    elsif input == "s" || input == "S"
      @human_player.search_health_pack
    elsif input.match(/\d/)
      enemy = @enemies_in_sight[input.to_i - 1]
      if enemy.nil?
        puts "C'est qui? Inconnu au bataillon."
      else
        @human_player.attacks(enemy)
        kill_player(enemy) if enemy.life_points <= 0
      end
    else
      puts "Une action stupide, non identifiée."
    end
  end

  def enemies_turn
    puts ""
    puts "Les autres joueurs t'attaquent !"
    puts ""
    @enemies_in_sight.each do |enemy|
      enemy.attacks(@human_player)
    end
  end

  def end
    puts "le jeu est fini"
    if @human_player.life_points > 0
      puts "BRAVO ! TU AS GAGNE !"
    else
      puts "Loser ! Tu as perdu !"
    end
  end

end


