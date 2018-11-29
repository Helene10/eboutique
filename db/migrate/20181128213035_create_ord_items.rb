class CreateOrdItems < ActiveRecord::Migration[5.2]
  def change
    create_table :ord_items do |t|
      t.integer :quantity
      t.references :item, foreign_key: true
      t.references :ord, foreign_key: true

      t.timestamps
    end
  end
end
