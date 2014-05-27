ActiveAdmin.register Volunteer do
  permit_params :name, :email, :gender, :sem, :college, :branch, :phone, :getting_laptop, :previous_camp, :ready_to_pay, :t_shirt_size
end