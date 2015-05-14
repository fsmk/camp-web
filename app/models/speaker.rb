class Speaker < ActiveRecord::Base
  validates_presence_of :name, :email, :camp_version, :camp_version_id
  has_attached_file :photo, :styles => { :medium => "128x168>", :thumb => "100x100>" }, :default_url => "/system/error/:style/missing.jpg"
  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/
  belongs_to :camp_version
end
