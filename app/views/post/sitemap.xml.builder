xml.instruct!
xml.urlset "xmlns" => "http://www.sitemaps.org/schemas/sitemap/0.9" do

  xml.url do
    xml.loc "http://camp.fsmk.org"
    xml.priority 1.0
  end

  xml.url do
    xml.loc "http://camp.fsmk.org/about"
    xml.priority 0.9
  end

  xml.url do
    xml.loc "http://camp.fsmk.org/register"
    xml.priority 0.9
  end

  xml.url do
    xml.loc "http://camp.fsmk.org/venue"
    xml.priority 0.9
  end

  xml.url do
    xml.loc "http://camp.fsmk.org/gallery"
    xml.priority 0.9
  end
  
  xml.url do
    xml.loc "http://camp.fsmk.org/faq"
    xml.priority 0.9
  end

  xml.url do
    xml.loc "http://camp.fsmk.org/technologies"
    xml.priority 0.9
  end

  xml.url do
    xml.loc "http://camp.fsmk.org/speakers"
    xml.priority 0.8
  end

  xml.url do
    xml.loc "http://camp.fsmk.org/sponsors"
    xml.priority 0.8
  end

  xml.url do
    xml.loc "http://camp.fsmk.org/contact_us"
    xml.priority 0.8
  end

  @articles.each do |article|
    xml.url do
      xml.loc article_url(article)
      xml.priority 0.7
    end
  end
end