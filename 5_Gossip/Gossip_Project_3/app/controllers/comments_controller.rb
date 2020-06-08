class CommentsController < ApplicationController

  def create

    @current_gossip = Gossip.find(params[:gossip_id])
    @comment = Comment.create(content: params[:content], user_id: User.first.id, gossip_id: @current_gossip.id)
    @tags = JoinTableGossipTag.all.map{|join| join.gossip_id == @current_gossip.id ? join.tag.title : nil}.compact    
    if @comment.save 
      @comments = @current_gossip.comments
      render 'gossips/show'
    end
  end

  def edit
    @current_gossip = Gossip.find(params[:gossip_id])
    @comment = Comment.find(params[:id])
  end

  def update
    @current_gossip = Gossip.find(params[:gossip_id])
    @tags = JoinTableGossipTag.all.map{|join| join.gossip_id == @current_gossip.id ? join.tag.title : nil}.compact    
    @comment = Comment.find(params[:id])

    if @comment.update(content: params[:content])
      @comments = @current_gossip.comments
      render 'gossips/show'
    end
  end

  def destroy
    @current_gossip = Gossip.find(params[:gossip_id])
    @tags = JoinTableGossipTag.all.map{|join| join.gossip_id == @current_gossip.id ? join.tag.title : nil}.compact    
    @comment = Comment.find(params[:id])

    if @comment.destroy
      @comments = @current_gossip.comments
      render 'gossips/show'
    end
  end

end
