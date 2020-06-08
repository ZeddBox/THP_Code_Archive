class Gossip
  attr_accessor :author, :content

  def initialize(author, content)
    @author = author
    @content = content
  end

  def save
    # Gets all gossips objects
    gossips_objects = self.class.all
    gossips = []

    gossips_objects.each do |gossip|
      gossips << "#{gossip.author},#{gossip.content}"
    end

    # Add new gossip to all gossips hash
    gossips << "#{@author},#{@content}"

    File.open("db/gossip.csv", 'w+') do |line|
      line.puts(gossips)
    end

    puts "All gossips has been exported to ./lib/gossip.csv"
  end

  def self.all
    # Define array storing all gossips data
    all_gossips = []

    # Read CSV file in which all gossips data are stored
    csv = CSV.read("db/gossip.csv")

    # Read the CSV line by line and store each gossip in previously defined array
    csv.each do |line|
      temporary_gossip = Gossip.new(line[0], line[1])
      all_gossips << temporary_gossip
    end

    # Return all gossips
    all_gossips
  end

  def self.destroy(gossip_to_delete)
    # Get gossips list
    gossips_objects = Gossip.all
    gossips = []

    gossips_objects.each do |gossip|
      gossips << "#{gossip.author},#{gossip.content}"
    end

    # remove from the gossip list array the gossip to delete
    gossips.each do |gossip|
      array = gossip.split(",")
      if array[0] == gossip_to_delete.author && array[1] == gossip_to_delete.content
        gossips.delete(gossip)
      end
    end

    # inject the new gossip list into csv file
    File.open("db/gossip.csv", 'w+') do |line|
      line.puts(gossips)
    end

    puts "Suppression effectuée avec succès !"
  end
end
