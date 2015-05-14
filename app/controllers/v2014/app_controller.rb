class V2014::AppController < InheritedResources::Base
  before_filter :init_blog
  layout :resolve_layout

  LAYOUT_PATH = "v2014/layouts/"

  protected
    def begin_of_association_chain
      @version
    end

  private
  def init_blog
    @version = CampVersion.find_by_name "v2014"
    @blogs = @version.blogs.all
  end
  def resolve_layout
    result = nil
    case action_name
    when "gallery"
      result = "application_single_colum"
    else
      result = "application"
    end
    "#{LAYOUT_PATH}#{result}"
  end
end