ActiveAdmin.register Volunteer do
  permit_params :name, :email, :gender, :sem, :college, :branch, :phone, :getting_laptop, :previous_camp, :ready_to_pay, :t_shirt_size, :status, :git_url, :description, :photo

  index do
    selectable_column
    id_column
    column :photo do |offer|
      image_tag(offer.photo.url(:thumb))
    end
    column :name
    column :email
    column :gender
    column :sem
    column :college
    column :branch
    column :phone
    column :getting_laptop
    column :previous_camp
    column :ready_to_pay
    column :ready_to_pay
    column :t_shirt_size
    column :status
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
      row :gender
      row :sem
      row :college
      row :branch
      row :phone
      row :getting_laptop
      row :previous_camp
      row :ready_to_pay
      row :t_shirt_size
      row :status
      row :git_url
      row :description
      row :created_at
      row :updated_at
    end
    panel 'Volunteer Answers' do
      attributes_table_for valunteer do
        valunteer.volunteer_qas.each do |vqa|
          row vqa.volunteer_question.question do
            vqa.answer
          end
        end
      end
    end
    active_admin_comments
  end

  form do |f|
    f.inputs do
      f.input :name
      f.input :email
      f.input :gender
      f.input :sem
      f.input :college
      f.input :branch
      f.input :phone
      f.input :getting_laptop
      f.input :previous_camp
      f.input :ready_to_pay
      f.input :t_shirt_size
      f.input :status, collection: [['Approved', 'approved'], ['Waiting list', 'waiting_list'], ['Not allowed', 'not_allowed'], ['Not verified', 'not_verified']]
      f.input :git_url
      f.input :description, label: "Description (HTML)"
      f.input :photo, label: "Photo (Passport size)", :required => false, :as => :file
    end
    f.actions
  end
end