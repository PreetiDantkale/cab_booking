class DropColumnDriverIdFromRideRequest < ActiveRecord::Migration[5.2]
  def change
    remove_column :ride_requests, :driver_id, :integer
  end
end
