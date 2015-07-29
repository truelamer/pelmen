class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :name
      t.string :middle
      t.string :surname
      t.string :product
      t.integer :count
      t.integer :check

      t.timestamps
    end
  end
end
