class PostController < ApplicationController

  def index
  end

  def gallery
    @title = "Gallery"
    begin
      flickr = Flickr.new(File.join(Rails.root, 'config', 'flickr.yml'))
      @photos = flickr.photos.search(user_id: Settings.flickr.user_id)
    rescue => e
      @photos = []
    end
  end

  def sitemap
    @articles = Article.all
  end

end
