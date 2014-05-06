ActiveAdmin.register Blog do
  permit_params :title, :body, :author, :link
end
