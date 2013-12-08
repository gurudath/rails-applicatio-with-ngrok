class SitemapsController < ApplicationController
  caches_page :index
  def index
    @posts = Article.all[0..10]
    respond_to do |format|
      format.xml
    end
  end

  def article_sitemap
    @posts = Article.all[0..10]
    respond_to do |format|
      format.xml
    end
  end
end
