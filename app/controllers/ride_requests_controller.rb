class RideRequestsController < ApplicationController
  # def index
  #   @requests = RideRequest.where(ride_id: params["ride_id"])
  #   #RideRequest.includes(:driver)
  # end
  def new
    @ride_request = RideRequest.new
  end

  def create
    #User.create(first_name: params[:first_name] , last_name: params[:last_name] , contact_number: params[:contact_number] , email_id: params[:email_id] , password:  params[:password]  )
    @ride_request = RideRequest.new(ride_request_parameters)    
    if @ride_request.save!
      redirect_to ride_requests_path
    else
      render :new
    end
  end
  
  def index
    @ride_request = RideRequest.all
  end

  def ride_request_parameters
    params.require(:ride_request).permit(:destination ,:status ,:user_id ,:ride_id )
  end
end
