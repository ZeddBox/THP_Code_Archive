class Player
  attr_accessor :name, :life_points

  ## CREATE NEW PLAYER
  def initialize(name)
    @name = name
    @life_points = 10
  end

  def show_state
    "#{@name} a #{@life_points} PV."
  end

  def gets_damage(damages)
    @life_points -= damages
    if @life_points <= 0
      "† #{name} a été tué ! †"
    end
  end

  def attacks(player)
    puts "## FIGHT ## #{name} attaque #{player.name} !"
    damages = compute_damage
    player.gets_damage(damages)
    puts "Il lui inflige #{damages} dommages."
    if player.life_points <= 0
      puts "† #{player.name} est mort sur le coup ! †"
    end
  end

  def compute_damage
    return rand(1..6)
  end

end

class HumanPlayer < Player
  attr_accessor :weapon_level
  
  def initialize(name)
    @weapon_level = 1
    @name = name
    @life_points = 100
  end

  def show_state
    "Tu as #{@life_points} PV et une arme de niveau #{weapon_level}."
  end

  def compute_damage
    return rand(1..6) * weapon_level
  end

  def search_weapon
    dice = rand(1..6)
    puts "#{name} a trouvé une arme de niveau #{dice}"
    if dice > @weapon_level
      @weapon_level = dice
      puts "Youhou ! elle est meilleure que ton arme actuelle : tu la prends !"
    else 
      "M@*#$... elle n'est pas mieux que ton arme actuelle..."
    end
  end

  def search_health_pack
    dice = rand(1..6)
    if dice == 1
      puts "... Tu n'as rien trouvé !"
    elsif dice > 1 && dice < 6
      puts "Tu as trouvé un pack de 50 PV !"
      @life_points += 50
      if @life_points > 100
        @life_points = 100
      end
      puts "Tu as maintenant #{life_points} PV !"
    else 
      puts "WOOOOW ! C'est sun pack de 80 PV!"
      @life_points += 80
      if @life_points > 100
        @life_points = 100
      end
      puts "Tu as maintenant #{life_points} PV !"
    end
  end

end