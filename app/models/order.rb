# frozen_string_literal: true

class Order < ApplicationRecord
  belongs_to :cart

  validates :first_name, presence: true, length: { maximum: 20 }
  validates :last_name, presence: true, length: { maximum: 20 }
  validates :email, presence: true, length: { maximum: 300 }, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  validates :address, presence: true, length: { maximum: 300 }
  validates :card_name, presence: true, length: { maximum: 30 }
  validates :card_number, presence: true, format: { with: /\A\d{14,16}\z/ }
  validates :card_expiration, presence: true, format: { with: /\A\d{4}\z/ }
  validates :card_cvv, presence: true, format: { with: /\A\d{3,4}\z/ }
end
