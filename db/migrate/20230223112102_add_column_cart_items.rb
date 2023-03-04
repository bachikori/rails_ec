# frozen_string_literal: true

class AddColumnCartItems < ActiveRecord::Migration[7.0]
  def change
    add_reference :cart_items, :cart, foreign_key: true
    change_column_null :cart_items, :cart_id, false
  end
end
