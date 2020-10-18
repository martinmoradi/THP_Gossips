class View

  def create_gossip
    params = {}
    puts "Quel est l'auteur du potin ?"
    params[:author] = gets.chomp
    puts "Quel est le potin ?"
    params[:content] = gets.chomp  
    params 
  end

  def index_gossips(gossips)
    gossips.each { |gossip| put gossip }
  end

end

