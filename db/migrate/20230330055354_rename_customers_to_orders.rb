# frozen_string_literal: true

class RenameCustomersToOrders < ActiveRecord::Migration[7.0]
  def change
    rename_table :customers, :orders
  end
end
