# frozen_string_literal: true

class CreateCustomers < ActiveRecord::Migration[7.0]
  def change
    create_table :customers do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :email, null: false
      t.string :address, null: false
      t.string :address2
      t.string :card_name, null: false
      t.integer :card_number, null: false
      t.integer :card_expiration, null: false
      t.string :card_cvv, null: false
      t.references :cart, null: false, foreign_key: true

      t.timestamps
    end
  end
end
