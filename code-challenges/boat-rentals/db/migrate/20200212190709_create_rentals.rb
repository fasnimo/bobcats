class CreateRentals < ActiveRecord::Migration[5.1]
  def change
    create_table :rentals do |t|
      t.integer :boat_id 
      t.integer :customer_id
      t.timestamps
    end
  end
end
