class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :name
      t.text :body
      t.string :event_date
      t.string :added_by

      t.timestamps
    end
  end
end
