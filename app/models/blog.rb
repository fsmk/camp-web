class Blog < ActiveRecord::Base
  validates_presence_of :title, :body, :author, :link, :camp_version, :camp_version_id
  belongs_to :camp_version
end
