class V2015::PostController < V2015::AppController

  def index
  end

  def speakers
    @title = "Speakers"
    @speakers = @version.speakers.order('name')
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

  def events
  end

end
