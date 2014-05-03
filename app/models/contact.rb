class Contact < ActiveRecord::Base
  validates_presence_of :name, :message
  VALID_EMAIL_REGEXP = /\A^([\w\.%\+\'\-]+)@([\w\-]+\.)+([\w]{2,})$\Z/i
  validates_format_of  :contact_email, with: VALID_EMAIL_REGEXP, allow_blank: false
  validates :mobile, length: { is: 10 }
end


