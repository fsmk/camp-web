class CreateSpeakers < ActiveRecord::Migration
  def change
    create_table :speakers do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.string :git_url
      t.text :description
      t.attachment :photo

      t.timestamps
    end
  end
end
