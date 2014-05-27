ActiveAdmin.register Contact do
  permit_params :name, :contact_email, :mobile, :message
end
