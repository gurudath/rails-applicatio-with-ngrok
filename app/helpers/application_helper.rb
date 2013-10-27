module ApplicationHelper

 def highlight_text(query,field)
  @results= results = Article.search do
    fulltext query do
      highlight field.to_sym
    end
  end
  content = ""
  @results.hits.each do |hit|
   puts "Post ##{hit.primary_key}"
   hit.highlights(field.to_sym).each do |highlight|
    content = highlight.format { |word| "<span class=highlite_text>#{word}</span>" }
   end
  end
  return content
end


end
