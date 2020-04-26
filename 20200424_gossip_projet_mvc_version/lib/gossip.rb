require 'csv'

class Gossip
  attr_reader :author, :content

  def initialize(author, content)
    @author = author
    @content = content
  end

  def save
    CSV.open("db/gossip.csv", "a") do |csv|
      csv << [@author, @content]
    end
  end

  def self.all
    all_gossips = []

    CSV.foreach("db/gossip.csv") do |ligne|
      gossip_provisoire = Gossip.new(ligne[0], ligne[1])
      gossips_array << gossip_provisoire
      end

    return all_gossips
  end
end

