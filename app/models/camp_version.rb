class CampVersion < ActiveRecord::Base
  validates_presence_of :name
  validates_uniqueness_of :name

  has_many :articles, dependent: :destroy
  has_many :blogs, dependent: :destroy
  has_many :contacts, dependent: :destroy
  has_many :feedbacks, dependent: :destroy
  has_many :speakers, dependent: :destroy
  has_many :volunteers, dependent: :destroy
  has_many :volunteer_questions, dependent: :destroy
  has_many :users, dependent: :destroy
  has_many :timeline_items, dependent: :destroy
end
