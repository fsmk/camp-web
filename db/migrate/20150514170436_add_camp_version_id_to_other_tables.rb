class AddCampVersionIdToOtherTables < ActiveRecord::Migration
  def change
    add_column :articles, :camp_version_id, :integer, index: true, null: false, default: 1
    add_column :blogs, :camp_version_id, :integer, index: true, null: false, default: 1
    add_column :contacts, :camp_version_id, :integer, index: true, null: false, default: 1
    add_column :feedbacks, :camp_version_id, :integer, index: true, null: false, default: 1
    add_column :speakers, :camp_version_id, :integer, index: true, null: false, default: 1
    add_column :volunteers, :camp_version_id, :integer, index: true, null: false, default: 1
    add_column :volunteer_questions, :camp_version_id, :integer, index: true, null: false, default: 1
  end
end
