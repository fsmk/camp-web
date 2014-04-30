class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.string :college
      t.string :dept
      t.string :sem
      t.boolean :getting_laptop
      t.string :city
      t.string :state
      t.string :email
      t.string :phone
      t.boolean :previous_camp

      t.timestamps
    end
  end
end
