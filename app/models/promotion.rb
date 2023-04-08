# frozen_string_literal: true

class Promotion < ApplicationRecord
  belongs_to :cart, optional: true
end
