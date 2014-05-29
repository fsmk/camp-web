class VolunteerQa < ActiveRecord::Base
  validates_presence_of :volunteer_id, :volunteer_question_id, :answer
  belongs_to :volunteer 
  belongs_to :volunteer_question
end
