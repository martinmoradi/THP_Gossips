require 'csv'

class Gossip

  attr_reader :author, :content

  def initialize(author, content)
    @content = content
    @author = author    
  end

  def save
    File.open("./db/gossip.csv", 'a+') {|f| f.write("#{@author}, #{@content}\n")}
  end

  def self.all
   all_gossips = []
   f = File.open("./db/gossip.csv", "r")
   f.each_line do |line|
    temp_gossip = Gossip.new(line)
    all_gossips << temp_gossip
    all_gossips
   end
  end



end

