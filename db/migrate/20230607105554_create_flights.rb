class CreateFlights < ActiveRecord::Migration[7.0]
  def change
    create_table :flights do |t|

      t.timestamps

      t.string :departure_airport_id
      t.index :departure_airport_id
      t.string :arrival_airport_id
      t.index :arrival_airport_id
      t.datetime :start
      t.integer :duration
    end
  end
end
