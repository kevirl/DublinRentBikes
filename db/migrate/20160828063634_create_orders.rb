class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :email
      t.string :bike
      t.integer :num
      t.date :start_date
      t.integer :days
      t.string :contactNum
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
