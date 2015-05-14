class V2015::AppController < ApplicationController
  before_filter :init_version
  layout :resolve_layout

  LAYOUT_PATH = "v2015/layouts/"

  private

  def init_version
    @version = CampVersion.find_by_name "v2015"
  end
  
  def resolve_layout
    result = "application"
    "#{LAYOUT_PATH}#{result}"
  end
end