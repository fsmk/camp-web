class Volunteer < ActiveRecord::Base
  validates_presence_of :name, :email, :gender, :sem, :college, :branch, :phone, :previous_camp, :t_shirt_size, :status, :camp_version, :camp_version_id
  validates :email, uniqueness: true
  VALID_EMAIL_REGEXP = /\A^([\w\.%\+\'\-]+)@([\w\-]+\.)+([\w]{2,})$\Z/i
  validates_format_of  :email, with: VALID_EMAIL_REGEXP, allow_blank: false

  has_many :volunteer_qas, dependent: :destroy
  has_attached_file :photo, :styles => { :medium => "128x168>", :thumb => "100x100>" }, :default_url => "/system/error/:style/missing.jpg"
  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/
  belongs_to :camp_version
end
