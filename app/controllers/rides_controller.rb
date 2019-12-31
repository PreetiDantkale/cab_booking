class RidesController < ApplicationController
  def index
    # @ride_count = Ride.count
    # p "------------"
    # p @ride_count
    # p "-----------"
    @ride = Ride.all
    end

  def new
    @ride = Ride.new
  end

  def create
    @ride = Ride.new(ride_parameters)    
    if @ride.save!
      redirect_to rides_path
    else
      render :new
    end
  end

  def ride_parameters
    params.require(:ride).permit(:date ,:time ,:location,:cab_id ,:driver_id)
  end
end
