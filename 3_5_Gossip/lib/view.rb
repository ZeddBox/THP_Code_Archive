class View
  def create_gossip
    system('clear')
    # Ask author
    puts "Who's the author of the gossip ?"
    print "> "
    author = gets.chomp

    puts ""

    # Ask content
    puts "What is the content of the gossip ?"
    print "> "
    content = gets.chomp

    {author => content}
  end

  def index_gossips(gossips)
    system('clear')
    if gossips.count > 0
      puts "Liste des potins :"
      i = 1
      gossips.each do |gossip|
        puts "- Potin ##{i} :  [#{gossip.author}] #{gossip.content}"
        puts ""
        i += 1
      end
    else
      puts "Il n'y a aucun potin d'enregistré !"
      puts ""
    end
  end
end