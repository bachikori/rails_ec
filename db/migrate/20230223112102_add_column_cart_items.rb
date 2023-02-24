# frozen_string_literal: true

class AddColumnCartItems < ActiveRecord::Migration[7.0]
  def change
    add_reference :cart_items, :cart, foreign_key: true
  end

  def up
    change_column :cart_items, :cart_id, :integer, null: false
  end
end
