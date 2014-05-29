class CreateVolunteerQas < ActiveRecord::Migration
  def change
    create_table :volunteer_qas do |t|
      t.integer :volunteer_id, null: false
      t.integer :volunteer_question_id, null: false
      t.text :answer, null: false

      t.timestamps
    end
  end
end
