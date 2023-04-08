# frozen_string_literal: true

class CreatePromotions < ActiveRecord::Migration[7.0]
  def change
    create_table :promotions do |t|
      t.string :promo_code, null: false
      t.integer :discount, null: false
      t.references :cart, foreign_key: true

      t.timestamps
    end
  end
end
