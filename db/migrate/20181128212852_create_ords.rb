class CreateOrds < ActiveRecord::Migration[5.2]
  def change
    create_table :ords do |t|
      t.references :user, foreign_key: true
      t.decimal :total_price

      t.timestamps
    end
  end
end
