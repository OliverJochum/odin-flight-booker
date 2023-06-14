class Booking < ApplicationRecord
  has_one :flights
  has_many :passengers
end
