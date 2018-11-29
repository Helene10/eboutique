class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price
      t.text :description_long
      t.text :description_short
      t.string :image_url
      t.string :category

      t.timestamps
    end
  end
end
