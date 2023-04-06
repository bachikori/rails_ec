# frozen_string_literal: true

class AddCulumnToCart < ActiveRecord::Migration[7.0]
  def change
    add_reference :carts, :promotion, foreign_key: true
  end
end
