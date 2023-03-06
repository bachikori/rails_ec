# frozen_string_literal: true

class CartItem < ApplicationRecord
  validates :quantity, presence: true, numericality: { greater_than_or_equal_to: 1 }

  belongs_to :cart
  belongs_to :item

  def sale_total_amount(item, quantity)
    item.sale_price * quantity
  end

  def total_amount(item, quantity)
    item.price * quantity
  end
end
