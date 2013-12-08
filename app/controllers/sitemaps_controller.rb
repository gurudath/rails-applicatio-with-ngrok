class SitemapsController < ApplicationController
  caches_page :index
  def index
    @posts = Article.all
    respond_to do |format|
      format.xml
    end
  end

  def article_sitemap
    @posts = Article.all
    respond_to do |format|
      format.xml
    end
  end
end
