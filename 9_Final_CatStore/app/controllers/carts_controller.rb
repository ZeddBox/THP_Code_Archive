class CartsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_current_user, only: [:show]

  def index
    @carts = Cart.all
    @carts_length = (Cart.find_by(user_id: current_user.id)).items.length
  end  

  def show
    @cart = Cart.find_by(user_id: params[:id])
  end
  
  def update
    @cart = Cart.find_by(user_id: current_user.id)
    new_item = JoinTableCartItem.create(cart_id: @cart.id, item_id: params[:id])

    respond_to do |format|
      format.html { redirect_to root_path }
      format.js { }
    end
  end

  def destroy
    @user = current_user
    @item = Item.find_by(id: params[:id])
    @cart = Cart.find_by(user_id: current_user.id)
    @cart_item = JoinTableCartItem.find_by(cart_id: @cart.id, item_id: @item.id).destroy

    respond_to do |format|
      format.html { redirect_to cart_path(@user.id) }
      # En commentaire pour le moment que l'AJAX fonctionne pas
      # format.js { }
    end
  end

  private

  def set_current_user
    @cart = Cart.find_by(user_id: params[:id])
    if current_user.id != @cart.user_id
      redirect_to root_path
    end
  end

end
