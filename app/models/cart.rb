# frozen_string_literal: true

class Cart < ApplicationRecord
  has_many :cart_items, dependent: :destroy

  def total_quantity
    cart_items.sum { |hash| hash[:quantity] }
  end
end
