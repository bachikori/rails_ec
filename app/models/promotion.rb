# frozen_string_literal: true

class Promotion < ApplicationRecord
  has_one :cart, dependent: :destroy
end
