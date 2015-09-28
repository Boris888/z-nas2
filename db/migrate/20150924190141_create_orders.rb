class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :state
      t.string :dish_sku
      t.monetize :amount
      t.json :payment

      t.timestamps null: false
    end
  end
end
