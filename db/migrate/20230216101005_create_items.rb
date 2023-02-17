# frozen_string_literal: true

class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :name, null: false
      t.integer :price, null: false
      t.integer :stock, null: false
      t.string :image_name, null: false
      t.boolean :review, null: false, default: false
      t.boolean :sale, null: false, default: false
      t.integer :sale_price

      t.timestamps
    end
  end
end
