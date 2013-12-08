# app/views/sitemaps/index.xml.builder
xml.urlset(xmlns: "http://www.sitemaps.org/schemas/sitemap/0.9") do
 xml.xmlns(:news=>"http://www.google.com/schemas/sitemap-news/0.9")
  @posts.each do |post|
    xml.url do
      xml.loc "http://a66e386.ngrok.com/articles/#{post.id}"
     xml.news do
      xml.publication do
      xml.name "Gurudath"
      xml.language "en"
     end
     xml.title "#{post.title}"
     xml.description "#{post.description}"
     xml.publication_date "#{post.created_at.strftime("%F")}"
     end
      xml.lastmod post.updated_at.strftime("%F")
      xml.changefreq("monthly")
    end
  end
end
