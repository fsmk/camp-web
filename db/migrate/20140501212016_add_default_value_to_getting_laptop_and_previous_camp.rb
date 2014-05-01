class AddDefaultValueToGettingLaptopAndPreviousCamp < ActiveRecord::Migration
  def up
    change_column :users, :getting_laptop, :boolean, default: false
    change_column :users, :previous_camp, :boolean, default: false
  end

  def down
    change_column :users, :getting_laptop, :boolean, default: nil
    change_column :users, :previous_camp, :boolean, default: nil
  end
end
