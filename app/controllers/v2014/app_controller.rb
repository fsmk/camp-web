class V2014::AppController < InheritedResources::Base
  before_filter :init_blog
  layout "v2014/layouts/application"

  LAYOUT_PATH = "../v2014/layouts/"

  private
  def init_blog
    @blogs = Blog.all
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