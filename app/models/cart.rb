# frozen_string_literal: true

class Cart < ApplicationRecord
  has_many :cart_items, dependent: :destroy

	# def sale_total_amount
  #   item.sale_price * quantity
  # end

  # def total_amount
  #   item.price * quantity
  # end

	def total_quantity
    cart_items.sum { |hash| hash[:quantity] }
  end
end
