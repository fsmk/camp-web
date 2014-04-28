class Changedatatypeofmobile < ActiveRecord::Migration
  def change
    change_column :contacts, :mobile, :string
  end
end
