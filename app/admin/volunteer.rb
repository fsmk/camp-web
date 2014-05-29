ActiveAdmin.register Volunteer do
  permit_params :name, :email, :gender, :sem, :college, :branch, :phone, :getting_laptop, :previous_camp, :ready_to_pay, :t_shirt_size

  show do |valunteer|
    attributes_table :name, :email, :gender, :sem, :college, :branch, :phone, :getting_laptop, :previous_camp, :ready_to_pay, :t_shirt_size, :created_at, :updated_at
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
end