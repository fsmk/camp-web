class Article < ActiveRecord::Base
  validates_presence_of :camp_version, :camp_version_id
  belongs_to :camp_version
end
