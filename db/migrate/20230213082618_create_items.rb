class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.text :name
      t.integer :price
      t.integer :stock
      t.string :image_name

      t.timestamps
    end
  end
end
