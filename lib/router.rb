require_relative 'controller'
require 'pry'

class Router

  def initialize
    @controller = Controller.new
  end

  def perform
    puts "Bienvenue dans The Gossip Project !"

    while true

      puts "Que souhaites-tu faire ?"
      puts "1 - Créer un gossip."
      puts "2 - Lister tous les gossips !"
      puts "4 - Quitter l'app."
      params = gets.chomp.to_i

      case params
      when 1
        puts "Tu as choisi de créer un gossip !"
        @controller.create_gossip

      when 2
        puts "Tu as choisis d'afficher tous les gossips !"
        @controller.index_gossips

      when 4
        puts "A bientôt !"

      else 
        puts "Ce choix n'existe pas, merci de réessayer."
      end

    end
  end


end

