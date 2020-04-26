require_relative 'controller'

class Router
  attr_accessor :controller

  def initialize
    @controller = Controller.new
  end

  def perform
    puts "BIENVENUE DANS THE GOSSIP PROJECT"
    while true
      puts ""
      puts "Tu veux faire quoi jeune mouss' ?"
      puts "1. Je veux créer un gossip"
      puts "2. Tu veux afficher les gossips"
      puts "3. Tu veux suprimer les gossips"
      puts "4. Je veux quitter l'app"
      print "> "
      params = gets.chomp.to_i

    case params #en fonction du choix
      when 1
        puts `clear`
        puts "Tu as choisi de créer un gossip"
        puts ""
        @controller.create_gossip

      when 2
        puts `clear`
        puts "Tu veux afficher les gossips"
        puts ""
        @controller.index_gossips

      when 3
        puts `clear`
        puts "Tu veux suprimer les gossips"
        puts ""
        @controller.destroy

      when 4
        puts "À bientôt !"
        break

      else
        puts `clear`
        puts "Ce choix n'existe pas, merci de ressayer"
      end
    end
  end
end
