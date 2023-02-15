class AddColumnsToItems < ActiveRecord::Migration[7.0]
  def change
    add_column :items, :sale, :boolean, default: false, null: false
    add_column :items, :review, :boolean, default: false, null: false
    add_column :items, :sale_price, :integer 
  end
end
