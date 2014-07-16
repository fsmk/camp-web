class AddGitUrlDescriptionAndPhotoToVolunteers < ActiveRecord::Migration
  def change
    add_column :volunteers, :git_url, :string
    add_column :volunteers, :description, :text
    add_attachment :volunteers, :photo
  end
end
