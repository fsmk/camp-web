ActiveAdmin.register VolunteerQuestion do
  permit_params :question, :qtype, :options
end