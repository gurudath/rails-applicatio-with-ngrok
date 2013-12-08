# app/views/sitemaps/index.xml.builder
xml.instruct! :xml, :version => '1.0', :encoding => 'UTF-8'
xml.urlset "xmlns" => "http://www.sitemaps.org/schemas/sitemap/0.9" do

 for post in @posts
   xml.url do
     xml.loc "http://6a060dbc.ngrok.com/articles/#{post.id}"
     xml.priority('1.0')
     xml.changefreq('never')
   end
 end

end