class CreateFeedbacks < ActiveRecord::Migration
  def change
    create_table :feedbacks do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.integer :age, null: false
      t.string :college, null: false
      t.string :role, null: false
      t.string :how_long_been_part, null: false
      t.text :activities
      t.text :suggestions, null: false
      t.text :how_you_contribute, null: false

      t.timestamps
    end
  end
end
