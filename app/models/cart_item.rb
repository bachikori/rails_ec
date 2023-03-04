# frozen_string_literal: true

class CartItem < ApplicationRecord
  validates :quantity, presence: true, numericality: { greater_than_or_equal_to: 1 }

  belongs_to :cart
  belongs_to :item
end
