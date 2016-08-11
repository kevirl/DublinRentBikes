class CreateRentalItems < ActiveRecord::Migration
  def change
    create_table :rental_items do |t|
      t.string :Item
      t.string :Type
      t.string :Category
      t.text :Description
      t.decimal :Rental_Rate

      t.timestamps null: false
    end
  end
end
