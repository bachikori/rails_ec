# frozen_string_literal: true

class Cart < ApplicationRecord
  has_many :cart_items, dependent: :destroy

  def total_quantity
    cart_items.sum { |hash| hash[:quantity] }
  end

  def sale_amount
    current_cart_prices = []
    cart_items.each do |cart_item|
      current_cart_prices << if cart_item.item.sale
                               cart_item.item.sale_price * cart_item.quantity
                             else
                               cart_item.item.price * cart_item.quantity
                             end
    end
    current_cart_prices.sum
  end
end
