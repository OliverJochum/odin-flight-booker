class Booking < ApplicationRecord
  has_one :flight, foreign_key: :flight_id
  has_many :passengers

  accepts_nested_attributes_for :flight, :passengers
end
