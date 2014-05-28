class VolunteerQuestion < ActiveRecord::Base
  validates_presence_of :question, :qtype
end
