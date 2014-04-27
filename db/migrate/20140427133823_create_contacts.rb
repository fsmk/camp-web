class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :contact_email
      t.integer :mobile
      t.text :message

      t.timestamps
    end
  end
end
