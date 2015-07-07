class TimelineItem < ActiveRecord::Base
  validates_presence_of :title, :html, :at, :camp_version
  belongs_to :camp_version

  ICONS = ["android", "sys_admin", "hardware", "common"]
end
