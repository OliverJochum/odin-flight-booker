class Airport < ApplicationRecord
  has_many :departing_flights,foreign_key: :departure_airport_id, class_name: 'Flight', primary_key: :code
  has_many :arriving_flights,foreign_key: :arrival_airport_id, class_name: 'Flight', primary_key: :code

  validates :code, length: {is: 3}
end
