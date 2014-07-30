ActiveAdmin.register Feedback do
  permit_params :name, :email, :age, :college, :role, :how_long_been_part, :activities, :suggestions, :how_you_contribute
end
