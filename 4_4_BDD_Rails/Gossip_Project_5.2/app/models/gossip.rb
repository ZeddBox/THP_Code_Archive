class Gossip < ApplicationRecord

  @my_id = Gossip.first.id
  @number_of_gossips = Gossip.last.id - Gossip.first.id

end
