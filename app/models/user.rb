class User < ActiveRecord::Base
 validates_presence_of :first_name, :gender, :college, :dept, :sem, :city, :state, :email, :phone
 validates :email, uniqueness: true
 VALID_EMAIL_REGEXP = /\A^([\w\.%\+\'\-]+)@([\w\-]+\.)+([\w]{2,})$\Z/i
 validates_format_of  :email, with: VALID_EMAIL_REGEXP, allow_blank: false

  def is_approvable
    test_string = college+city
    test_string = test_string.gsub! /\s+/, ''
    if /(?:puttur|vcet)|vivekananda.*coll.*eng.*tech/i.match(test_string)
      false
    else
      true
    end
  end
end
