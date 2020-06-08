class GossipsController < ApplicationController
  before_action :authenticate_user, except: [:index]

  def index
  end

  def show
    @current_gossip = Gossip.find(params[:id])
    @comment = Comment.new
    @tags = JoinTableGossipTag.all.map{|join| join.gossip_id == @current_gossip.id ? join.tag.title : nil}.compact
    @comments = @current_gossip.comments
  end

  def new
    @tag = JoinTableGossipTag.new
    @gossip = Gossip.new
    @tags = Tag.all
  end

  def create
    @gossip = Gossip.new(title: params[:title], content: params[:content], user_id: params[:user])
    @tags = JoinTableGossipTag.new(gossip_id: @gossip.id, tag_id: params[:tag])

    if @gossip.save && params[:tag] != ""
      @tag = JoinTableGossipTag.create(tag_id: Tag.find(params[:tag]).id, gossip_id: @gossip.id) 
      redirect_to '/'
    else
      render :new
    end
  end

  def edit
    @tags = Tag.all
    @current_gossip = Gossip.find(params[:id])
    @current_tags = JoinTableGossipTag.all.map{|join| join.gossip_id == @current_gossip.id ? join.tag : nil}.compact
  end

  def update
    @current_gossip = Gossip.find(params[:id])
    
    if @current_gossip.update(gossip_params)
      redirect_to gossips_path
    else
      render :edit
    end
  end

  def destroy
    @current_gossip = Gossip.find(params[:id])
    @current_gossip.destroy

    redirect_to gossips_path
  end

  private
    def gossip_params
      gossip_params = params.require(:gossip).permit(:title, :content)
    end
end
