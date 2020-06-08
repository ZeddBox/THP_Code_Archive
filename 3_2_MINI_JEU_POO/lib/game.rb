class Game
  attr_accessor :human_player, :enemies

  def initialize(human_player)
    @human_player = HumanPlayer.new(human_player)

    @enemies = []
    enemies = ["Jorge","Michaela","Maria","Eduardo"]
    enemies.each do |enemy| 
      @enemies << Player.new(enemy)
    end
  end

  def kill_player(player)
    @ennemies.delete_at(@ennemies.index(player))
  end 

  def new_players_in_sight
    rand_val = rand(1..6)
    case rand_val
    when 1
        puts "Pas d'enemies en vue"
    when 2..4
        @ennemies<<Player.new("bot#{@ennemies.size}#{rand(1..10)}")
        @players_left -= 1
    when 5..6
        @ennemies<<Player.new("bot#{@ennemies.size}#{rand(1..10)}")
        @ennemies<<Player.new("bot#{@ennemies.size}#{rand(1..10)}")
        @players_left -= 2
    end
  end
end



## Je me suis arrêté à la def kill_player, je ne trouvais plus comment faire ! 