class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :init_blog
  layout :resolve_layout

  private
  def init_blog
    @blogs = Blog.all
  end
  def resolve_layout
    case action_name
    when "gallery"
      "application_single_colum"
    end
  end
end
