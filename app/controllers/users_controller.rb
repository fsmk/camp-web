class UsersController < ApplicationController
  def index
  end
  def new
   @user = User.new		  
  end
  def create
    User.create params[:user] 
    redirect_to root_url	 
  end	  
end
