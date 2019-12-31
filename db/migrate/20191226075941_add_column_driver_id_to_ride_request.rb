class AddColumnDriverIdToRideRequest < ActiveRecord::Migration[5.2]
  def change
    add_reference :ride_requests, :ride
  end
end
