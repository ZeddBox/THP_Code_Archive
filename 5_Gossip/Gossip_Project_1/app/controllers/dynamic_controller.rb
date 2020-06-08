class DynamicController < ApplicationController
  def welcome
    
    @first_name = params[:first_name]
    if @first_name.class == String
      @first_name = @first_name.capitalize
    end

    @my_id = Gossip.first.id
    @number_of_gossips = Gossip.last.id - Gossip.first.id + 1
  end

  def user
    @user_id = params[:user_id]
  end

  def gossip
    @gossip_id = params[:gossip_id]
    @gossip = Gossip.find_by(id:@gossip_id)
  end

end
