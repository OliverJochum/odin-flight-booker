class Flight < ApplicationRecord
  belongs_to :departure_airport, class_name: 'Airport', foreign_key: :departure_airport_id, primary_key: :code
  belongs_to :arrival_airport, class_name: 'Airport', foreign_key: :arrival_airport_id, primary_key: :code
  belongs_to :booking
  belongs_to :passenger


  validates :departure_airport_id, length: {is: 3}
  validates :arrival_airport_id, length: {is: 3}

  def self.search(da, aa, s)
    where('departure_airport_id = ? AND arrival_airport_id = ? AND start = ?',da,aa,s)
  end
end
