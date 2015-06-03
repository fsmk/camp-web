class AddTrackToUsers < ActiveRecord::Migration
  def change
    add_column :users, :track, :string
  end
end
