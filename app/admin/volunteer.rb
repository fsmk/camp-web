ActiveAdmin.register Volunteer do
  permit_params :name, :email, :gender, :sem, :college, :branch, :phone, :getting_laptop, :previous_camp, :ready_to_pay, :t_shirt_size, :status

  show do |valunteer|
    attributes_table :name, :email, :gender, :sem, :college, :branch, :phone, :getting_laptop, :previous_camp, :ready_to_pay, :t_shirt_size, :status, :created_at, :updated_at
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
    end
    f.actions
  end
end