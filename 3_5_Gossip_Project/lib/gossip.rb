require 'view'
require 'pry'
class Gossip
  attr_accessor :author, :content, :id

  def initialize(author, content)
    @content = content
    @author = author
    @id = rand(1000..9999)
  end

  def save
    CSV.open("db/gossip.csv", "a+") do |csv|
        csv << [@id, @author, @content]
    end
  end

  def index_gossips
    CSV.foreach("db/gossip.csv", "r") do |row|
      puts "##{row[0]} | Auteur : #{row[1]} | #{row[2]}"
    end
  end

  def delete_gossip
    gossip_to_delete = gets.chomp

    infile = 'db/gossip.csv'

    outfile = 'db/gossip_out.csv'
    table = CSV.table (infile)
    table[1] [:col1] = nil
    File.write (outfile, table)
# # binding.pry
#     table.to_a.each do |i|
#       if table.to_a[i].index(gossip_to_delete) != nil
#         index_to_delete = table.to_a[i].index(gossip_to_delete)
#         table.to_a.delete_at(i)
#       end
    # end




    CSV.open("db/gossip.csv", "w") do |f|
      f.write(table.to_csv)
    end
  end

end