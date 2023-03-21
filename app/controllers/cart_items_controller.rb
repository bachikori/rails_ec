# frozen_string_literal: true

class CartItemsController < ApplicationController
  def index; end

  def create
    @cart_item = current_cart.cart_items.build(cart_item_params)
    if @cart_item.save
      flash[:notice] = '買い物かごに商品を追加しました'
    else
      flash[:danger] = '買い物かごに商品を追加できませんでした'
    end
    redirect_to cart_items_path
  end

  def destroy
    @cart_item = current_cart.cart_items.find(params[:id])
    @cart_item.destroy
    redirect_to cart_items_path
  end

  private

  def cart_item_params
    params.permit(:item_id, :quantity)
  end
end
