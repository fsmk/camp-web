class CreateCampVersions < ActiveRecord::Migration
  def up
    create_table :camp_versions do |t|
      t.string :name, null: false

      t.timestamps
    end
    add_index :camp_versions, :name, unique: true
    CampVersion.create name: "v2014"
  end

  def down
    drop_table :camp_versions
  end
end
