require_relative 'gossip'
require_relative 'view'

class Controller
  attr_accessor :view

  def initialize
    @view = View.new
  end

  def create_gossip
    params = @view.create_gossip
    gossip = Gossip.new(params[:author], params[:content])
    gossip.save
  end

  def index_gossips
    @view.index_gossips
  end

  def delete_gossip
    @view.delete_gossip
    delete = Gossip.new(1,1).delete_gossip
  end

end 