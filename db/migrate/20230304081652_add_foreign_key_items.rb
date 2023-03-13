# frozen_string_literal: true

class AddForeignKeyItems < ActiveRecord::Migration[7.0]
  def change
    add_reference :cart_items, :item, foreign_key: true
    change_column_null :cart_items, :item_id, false
  end
end
