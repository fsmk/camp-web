class V2015::AppController < InheritedResources::Base
  before_filter :init
  layout :resolve_layout

  LAYOUT_PATH = "v2015/layouts/"

  protected
  def begin_of_association_chain
    @version
  end

  private

  def init
    @version = CampVersion.find_by_name "v2015"
    @blogs = @version.blogs.all
  end
  
  def resolve_layout
    result = "application"
    "#{LAYOUT_PATH}#{result}"
  end
end