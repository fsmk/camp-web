class UsersController < ApplicationController
  def index
  end
  def new
   @user = User.new
  end
  def create
   @user = User.create params[:user]
   if @user.save
    redirect_to root_url
   else
    render 'new'
   end
  end
end
