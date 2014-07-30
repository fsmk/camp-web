class Feedback < ActiveRecord::Base
  validates_presence_of :name, :email, :age, :college, :role, :how_long_been_part, :suggestions, :how_you_contribute
  VALID_EMAIL_REGEXP = /\A^([\w\.%\+\'\-]+)@([\w\-]+\.)+([\w]{2,})$\Z/i
  validates_format_of  :email, with: VALID_EMAIL_REGEXP, allow_blank: false
end
