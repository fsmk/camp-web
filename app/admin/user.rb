ActiveAdmin.register User do
  permit_params :first_name, :last_name, :gender, :college, :dept, :sem, :getting_laptop, :city, :state, :email, :phone, :track, :previous_camp
end
