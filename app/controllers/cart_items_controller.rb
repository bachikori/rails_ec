class CartItemsController < ApplicationController
  def index
    @cart_items = CartItem.all
    @quantity = 0
    @sale_amount = 0
  end

  def create
    @cart_item = CartItem.new(item_id: params[:item_id], quantity: params[:quantity] ? params[:quantity] : 1)
    @cart_item.save
    p @cart_item
    # binding.pry
    redirect_to cart_items_path
  end

  def destroy
    @cart_item = CartItem.find_by(item_id: params[:id])
    @cart_item.destroy
    redirect_to cart_items_path
  end
end
