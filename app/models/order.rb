# frozen_string_literal: true

class Order < ApplicationRecord
  belongs_to :cart

  validates :first_name, presence: true, length: { maximum: 10 }
  validates :last_name, presence: true, length: { maximum: 10 }
  validates :email, presence: true
  validates :address, presence: true
  validates :card_name, presence: true
  validates :card_number, presence: true
  validates :card_expiration, presence: true
  validates :card_cvv, presence: true
end
