require 'csv'

class Gossip
  attr_accessor :author, :content

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

    CSV.read("db/gossip.csv").each do |line|
      all_gossips << Gossip.new(line[0], line[1])
    end
    all_gossips
  end

  def self.find(id)
    all_gossips = self.all
    all_gossips[id.to_i - 1]
  end

  def self.update(gossip_id, author_new, content_new)
    all_gossips = []

    CSV.read("db/gossip.csv").each_with_index do |line, index|
        if gossip_id.to_i == (index + 1) # check the gossip to update
          all_gossips << Gossip.new(author_new, content_new)
        else
          all_gossips << Gossip.new(line[0], line[1])
        end
      end
    CSV.open("db/gossip.csv", "w") # clear the db
    all_gossips.each { |gossip| gossip.save } # save all the gossips with the updated one
  end
end
