class Ride < ApplicationRecord
  validates :date , :time , :location , presence: true
  belongs_to :driver
  belongs_to :cab
  has_many :ride_requests
  
  def driver_name
    driver.first_name
  end
end
