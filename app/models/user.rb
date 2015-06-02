class User < ActiveRecord::Base
 validates_presence_of :first_name, :gender, :college, :dept, :sem, :city, :state, :email, :phone
 validates_uniqueness_of :email, scope: :camp_version_id
 VALID_EMAIL_REGEXP = /\A^([\w\.%\+\'\-]+)@([\w\-]+\.)+([\w]{2,})$\Z/i
 validates_format_of  :email, with: VALID_EMAIL_REGEXP, allow_blank: false
 belongs_to :camp_version

  def is_approvable version
    version.users.count < 201
  end
end
