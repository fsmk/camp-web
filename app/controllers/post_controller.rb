class PostController < ApplicationController

  def contact
    @contact = Contact.new
  end

  def create_contact
    Contact.create params[:contact]
    render :index
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

end
