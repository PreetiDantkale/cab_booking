class Ride < ApplicationRecord
  validates :date , :time , :location ,:email_id , presence: true
  belongs_to :driver
  belongs_to :cab
end
