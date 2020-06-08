require './lib/gossip'
require './lib/view'

class Controller
  attr_accessor :gossip, :view

  def initialize
    @view = View.new
  end

  def create_gossip
    params = @view.create_gossip
    gossip = Gossip.new(params.keys.first, params.values.first)
    gossip.save
  end

  def index_gossips
    gossips = Gossip.all
    @view.index_gossips(gossips)
  end

  def destroy_gossip
    # List all gossips
    system('clear')
    gossips = Gossip.all
    @view.index_gossips(gossips)

    # Ask user which one to delete
    puts "Which gossip would you want to delete ?"
    print "> "
    gossip_number_to_delete = gets.chomp

    # Put all gossips objects indexed in a hash
    all_gossips = []

    gossips.each do |gossip|
      all_gossips << gossip
    end

    # Determine which gossip is going to be deleted
    gossip_to_delete = all_gossips[gossip_number_to_delete.to_i - 1]

    # Pass the selected gossip
    result = Gossip.destroy(gossip_to_delete)

    # Display confirmation of delete
    if result
      puts "The gossip ha been deleted."
    else
      "Error. The gossip wasn't found or wasn't able to be deleted. Please contact your administrator."
    end
  end
end