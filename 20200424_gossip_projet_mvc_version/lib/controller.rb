require_relative 'gossip'
require_relative 'view'


class Controller
  def initialize
    @view = View.new
    @gossip = nil
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
end
