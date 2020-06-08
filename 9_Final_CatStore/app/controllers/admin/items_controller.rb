class Admin::ItemsController < ApplicationController
  before_action :authorized?

def index
  @items = Item.all
end

def show 
  @item = Item.find(params[:id])
end

def edit
  @item = Item.find(params[:id])
end

def new
  @items = Item.all
  @item = Item.new
end

def create
  @item = Item.new(title: params[:title], description: params[:description], race: params[:race], photographer: params[:photographer], price: params[:price], image_url: params[:image_url])
  if @item.save
    redirect_to admin_items_path
  else
    render :new
  end
end

def update
  @item = Item.find(params[:id])
  item_params =  params.require(:item).permit(:title, :description, :price, :image_url, :race)
  @item.update(item_params)
  redirect_to admin_item_path(@item.id)
end

def destroy
  @item = Item.find(params[:id])
  @item.destroy
  redirect_to admin_items_path
end


private 

  def authorized?
    if current_user.is_admin == true
      return true
    else
      redirect_to root_path
    end
  end

end
