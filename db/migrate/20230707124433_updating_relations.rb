class UpdatingRelations < ActiveRecord::Migration[7.0]
  def change
    add_column :flights, :booking_id, :integer
    add_index :flights, :booking_id

    add_column :flights, :passenger_id, :integer
    add_index :flights, :passenger_id
  end
end
