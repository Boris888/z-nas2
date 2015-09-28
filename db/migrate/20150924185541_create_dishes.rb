class CreateDishes < ActiveRecord::Migration
  def change
    create_table :dishes do |t|
      t.string :sku
      t.string :name
      t.monetize :price, currency: { present: false }

      t.timestamps null: false
    end
  end
end
