class RideRequest < ApplicationRecord
  validates :destination , :status , presence: true
  #validate :prevent_user_from_creating_2_rides

  belongs_to :user
  belongs_to :ride

  
end
