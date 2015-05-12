xml.instruct!
xml.urlset "xmlns" => "http://www.sitemaps.org/schemas/sitemap/0.9" do

  xml.url do
    xml.loc "http://camp.fsmk.org"
    xml.priority 1.0
  end

  xml.url do
    xml.loc "http://camp.fsmk.org/2014/about"
    xml.priority 0.9
  end

  xml.url do
    xml.loc "http://camp.fsmk.org/2014/register"
    xml.priority 0.9
  end

  xml.url do
    xml.loc "http://camp.fsmk.org/2014/venue"
    xml.priority 0.9
  end

  xml.url do
    xml.loc "http://camp.fsmk.org/2014/gallery"
    xml.priority 0.9
  end
  
  xml.url do
    xml.loc "http://camp.fsmk.org/2014/faq"
    xml.priority 0.9
  end

  xml.url do
    xml.loc "http://camp.fsmk.org/2014/technologies"
    xml.priority 0.9
  end

  xml.url do
    xml.loc "http://camp.fsmk.org/2014/speakers"
    xml.priority 0.8
  end

  xml.url do
    xml.loc "http://camp.fsmk.org/2014/sponsors"
    xml.priority 0.8
  end

  xml.url do
    xml.loc "http://camp.fsmk.org/2014/contact_us"
    xml.priority 0.8
  end

  @articles.each do |article|
    xml.url do
      xml.loc article_url(article)
      xml.priority 0.7
    end
  end
end