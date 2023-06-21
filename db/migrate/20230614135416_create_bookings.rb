class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|

      t.timestamps
      t.integer :flight_id
      t.integer :passenger_id
      t.index :passenger_id
    end
  end
end
