class CreateVolunteers < ActiveRecord::Migration
  def change
    create_table :volunteers do |t|
      t.string :name
      t.string :email, null: false
      t.string :gender
      t.integer :sem
      t.string :college
      t.string :branch
      t.string :phone
      t.boolean :getting_laptop, default: false
      t.string :previous_camp
      t.boolean :ready_to_pay, default: false
      t.string :t_shirt_size

      t.timestamps
    end
    add_index :volunteers, :email, unique: true
  end
end
