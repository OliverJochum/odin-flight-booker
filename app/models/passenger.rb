class Passenger < ApplicationRecord
  belongs_to :booking
  belongs_to :flight, optional: true
end
