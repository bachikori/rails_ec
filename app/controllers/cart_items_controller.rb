class CartItemsController < ApplicationController
  def index
    @cart_items = CartItem.all
    @quantity = 0
    @sale_amount = 0
  end

  def create
    @cart_item = CartItem.new(item_id: params[:item_id], quantity: params[:quantity] ? params[:quantity] : 1)
    @cart_item.save
    # binding.pry
    redirect_to item_cart_items_path(params[:item_id])
  end
end
