class CreateVolunteerQuestions < ActiveRecord::Migration
  def change
    create_table :volunteer_questions do |t|
      t.string :question, null: false
      t.string :qtype, null: false
      t.string :options

      t.timestamps
    end
  end
end
