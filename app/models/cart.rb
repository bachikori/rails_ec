# frozen_string_literal: true

class Cart < ApplicationRecord
  has_many :cart_items, dependent: :destroy
  has_one :order, dependent: :destroy
  has_one :promotion, dependent: :destroy

  def total_quantity
    cart_items.sum { |hash| hash[:quantity] }
  end

  def sale_amount
    current_cart_prices = cart_items.map do |cart_item|
      if cart_item.item.sale
        cart_item.item.sale_price * cart_item.quantity
      else
        cart_item.item.price * cart_item.quantity
      end
    end
    if promotion
      current_cart_prices.sum - promotion.discount
    else
      current_cart_prices.sum
    end
  end

  def buy
    cart_items.each do |cart_item|
      cart_item.item.stock_dec!(cart_item.quantity)
    end
  end
end
