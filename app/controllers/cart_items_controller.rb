# frozen_string_literal: true

class CartItemsController < ApplicationController
  def index; end

  def create
    @cart_item = current_cart.cart_items.build(cart_item_permit)
    @cart_item.save
    redirect_to cart_items_path
  end

  def destroy
    @cart_item = current_cart.cart_items.find_by(item_id: params[:id])
    @cart_item.destroy
    redirect_to cart_items_path
  end

  private

  def cart_item_permit
    params.permit(:item_id, :quantity)
  end
end
