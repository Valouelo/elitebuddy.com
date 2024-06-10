class Booking < ApplicationRecord
  belongs_to :buddy
  belongs_to :user
end
