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
      flash[:success] = "Thank you for registrations. Your id number is #{@user.id}. A mail regarding the payment of registration fees will be sent to you soon. Please follow the instructions given in the same."
    else
      @user.status = "waiting_list"
      flash[:notice] = "Dear student,\nyour registration in under waiting list as we have reached max seat limit. Kindly contact Rakesh(+91-7204044233) or Shijil(+91-8892324346)"
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
