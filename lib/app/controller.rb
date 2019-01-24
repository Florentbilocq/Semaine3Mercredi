require 'gossip'
require 'view'

class Controller

	def initialize 
		@view = View.new
	end

	def create_gossip
		params = @view.create_gossip
		gossip = Gossip.new(params[:author], params[:content])
		gossip.save

	end

	def index_gossips
	index = Gossip.all

    @view.index_gossips(index)

	end

	def delete_gossip
	index = Gossip.all
	d = @view.choice_gossip(index)
	Gossip.delete(d)
	end
end