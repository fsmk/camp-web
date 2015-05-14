xml.instruct!
xml.urlset "xmlns" => "http://www.sitemaps.org/schemas/sitemap/0.9" do

  xml.url do
    xml.loc "http://camp.fsmk.org"
    xml.priority 1.0
  end

  xml.url do
    xml.loc "http://camp.fsmk.org/v2014/about"
    xml.priority 0.9
  end

  xml.url do
    xml.loc "http://camp.fsmk.org/v2014/register"
    xml.priority 0.9
  end

  xml.url do
    xml.loc "http://camp.fsmk.org/v2014/venue"
    xml.priority 0.9
  end

  xml.url do
    xml.loc "http://camp.fsmk.org/v2014/gallery"
    xml.priority 0.9
  end
  
  xml.url do
    xml.loc "http://camp.fsmk.org/v2014/faq"
    xml.priority 0.9
  end

  xml.url do
    xml.loc "http://camp.fsmk.org/v2014/technologies"
    xml.priority 0.9
  end

  xml.url do
    xml.loc "http://camp.fsmk.org/v2014/speakers"
    xml.priority 0.8
  end

  xml.url do
    xml.loc "http://camp.fsmk.org/v2014/sponsors"
    xml.priority 0.8
  end

  xml.url do
    xml.loc "http://camp.fsmk.org/v2014/contact_us"
    xml.priority 0.8
  end

  Article.all.each do |article|
    xml.url do
      xml.loc(article.camp_version.name == "v2014" ? v2014_article_url(article) : nil)
      xml.priority 0.7
    end
  end
end