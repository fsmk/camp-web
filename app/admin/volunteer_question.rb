ActiveAdmin.register VolunteerQuestion do
  permit_params :question, :qtype, :options, :camp_version_id

  form do |f|
    f.inputs do
      f.input :question
      f.input :qtype, collection: [['Text', 'text'], ['Multi choice', 'multi_choice']]
      f.input :options, label: "Options (only if 'Qtype' is 'Multi choice'. Comma seperated values. eg: apple,banana)"
      f.input :camp_version
    end
    f.actions
  end
end