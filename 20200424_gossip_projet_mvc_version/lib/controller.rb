require_relative 'gossip'
require_relative 'view'


class Controller
  def initialize
    @view = View.new
  end

  def create_gossip
    params = @view.create_gossip
    author = params[:author]
    content = params[:content]
    gossip = Gossip.new(author, content)
    gossip.save
  end

  def index_gossips
    gossips = Gossip.all
    @view.index_gossips(gossips)
  end

  def clear_csv
    CSV.open("db/gossip.csv", "w")
  end

  def destroy
    index_gossips
    input = @view.destroy_gossip.to_i - 1
    gossips = Gossip.all
    gossips.delete_at(input)
    clear_csv
    gossips.each { |gossip| gossip.save }
    index_gossips
  end
end
