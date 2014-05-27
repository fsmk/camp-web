class Volunteer < ActiveRecord::Base
  validates_presence_of :name, :email, :gender, :sem, :college, :branch, :phone, :previous_camp, :t_shirt_size
  validates :email, uniqueness: true
  VALID_EMAIL_REGEXP = /\A^([\w\.%\+\'\-]+)@([\w\-]+\.)+([\w]{2,})$\Z/i
  validates_format_of  :email, with: VALID_EMAIL_REGEXP, allow_blank: false
end
