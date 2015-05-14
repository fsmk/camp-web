class VolunteerQuestion < ActiveRecord::Base
  validates_presence_of :question, :qtype, :camp_version, :camp_version_id
  belongs_to :camp_version
end
