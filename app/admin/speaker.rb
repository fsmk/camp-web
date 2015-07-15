ActiveAdmin.register Speaker do
  permit_params :name, :email, :git_url, :description, :photo, :camp_version_id

  index do
    selectable_column
    id_column
    column :photo do |offer|
      image_tag(offer.photo.url(:thumb))
    end
    column :name
    column :email
    column :git_url
    column :created_at
    column :updated_at
    actions
  end

  show do |valunteer|
    attributes_table do
      row :photo do
        image_tag(valunteer.photo.url(:medium))
      end
      row :name
      row :email
      row :git_url
      row :description
      row :created_at
      row :updated_at
    end
    active_admin_comments
  end

  form do |f|
    f.inputs do
      f.input :name
      f.input :email
      f.input :git_url
      f.input :description, label: "Description (HTML)"
      f.input :photo, label: "Photo (Passport size)", :required => false, :as => :file
      f.input :camp_version
    end
    f.actions
  end
end