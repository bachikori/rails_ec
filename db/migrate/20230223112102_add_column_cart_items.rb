# frozen_string_literal: true

class AddColumnCartItems < ActiveRecord::Migration[7.0]
  def change
    add_column :cart_items, :cart_id, :integer
  end
end
