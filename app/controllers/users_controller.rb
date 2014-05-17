class UsersController < ApplicationController
  def index
    redirect_to new_user_path
  end
  def new
   @user = User.new
  end
  def create
   @user = User.new(user_params)
   if @user.save
    flash[:success] = "An email will be sent to the registered email address regarding the payment of registration fees"
    redirect_to root_url
   else
    render 'new'
   end
  end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :gender, :college, :dept, :sem, :getting_laptop, :city, :state, :email, :phone, :previous_camp)
  end
end
