class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    #User.create(first_name: params[:first_name] , last_name: params[:last_name] , contact_number: params[:contact_number] , email_id: params[:email_id] , password:  params[:password]  )
    @user = User.new(user_parameters)
    if @user.save!
      redirect_to users_path
    else
      render :new
    end
  end

  def index
    @user = User.all
    #render json: @user

   # respond_to do |format|
   #    format.html
   #    format.json { render :json => @user.as_json  }
   #  end
  end

  def user_parameters
    params.require(:user).permit(:first_name ,:last_name ,:contact_number ,:email_id ,:password)
  end
end
