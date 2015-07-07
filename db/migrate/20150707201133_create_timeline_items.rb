class CreateTimelineItems < ActiveRecord::Migration
  def change
    create_table :timeline_items do |t|
      t.string :title, null: false
      t.text :html, null: false
      t.datetime :at, null: false
      t.string :image_icon
      t.integer :camp_version_id, index: true, null: false, default: 1

      t.timestamps
    end
  end
end
