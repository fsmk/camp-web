class AddStartAtAndEndAtCampVersions < ActiveRecord::Migration
  def change
    add_column :camp_versions, :start_at, :date_time
    add_column :camp_versions, :end_at, :date_time
  end
end
