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
    if @user.is_approvable
      flash[:success] = "Thank you for registrations. Your id number is #{@user.id}. A mail regarding the payment of registration fees has been sent to you. Please follow the instructions given in the same."
    else
      @user.status = "waiting_list"
      flash[:info] = "Dear student,\nsince many registrations has got from VCET puttur. we are keeping your registration in waiting list kindly contact Rakesh: (+91) 7204044233 or Sijil: (+91) 8892324346 for more details."
      @user.save
    end
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
