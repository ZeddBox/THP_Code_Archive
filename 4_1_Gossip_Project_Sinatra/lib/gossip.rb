require 'csv'
require 'pry'

class Gossip
  attr_accessor :author, :content

  def initialize(author, content)
    @author = author
    @content = content
  end

  def save
    CSV.open("./db/gossips.csv", "a+") do |csv|
      csv << [@author, @content]
    end
  end

  def self.all
    all_gossips = []
    CSV.read("db/gossips.csv").each do |csv_line|
      all_gossips << Gossip.new(csv_line[0], csv_line[1])
    end
    return all_gossips
  end

  def self.find(n)
    all_gossips = []
    CSV.read("db/gossips.csv").each do |csv_line|
      all_gossips << Gossip.new(csv_line[0], csv_line[1])
    end
    return all_gossips[n]
  end

  def edit(number)
    number = number
    all_gossips = Gossip.all
    gossips = []
    all_gossips.each do |gossip|
      gossips << [gossip.author, gossip.content]
    end
    gossips[number] = [@author, @content]

    gossips.length.times do |i|
    CSV.open("./db/gossip.csv", "a") do |csv|
      csv << gossips[i]
      end
    end
    system ('mv db/gossip.csv db/gossips.csv')
  end

end