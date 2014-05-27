class VolunteersController < InheritedResources::Base
  actions :new, :create

  private
  def permitted_params
    params.permit(:volunteer => [:name, :email, :gender, :sem, :college, :branch, :phone, :getting_laptop, :previous_camp, :ready_to_pay, :t_shirt_size])
  end
end
