class CreateRestaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.integer :phone_number, limit: 8
      t.string :category

      t.timestamps
    end
  end
end
