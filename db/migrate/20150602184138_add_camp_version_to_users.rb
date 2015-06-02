class AddCampVersionToUsers < ActiveRecord::Migration
  def change
    add_column :users, :camp_version_id, :integer, index: true, null: false, default: 1
  end
end
