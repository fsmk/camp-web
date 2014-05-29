class AddStatusToVolunteers < ActiveRecord::Migration
  def change
    add_column :volunteers, :status, :string, null: false, default: "not_verified"
  end
end
