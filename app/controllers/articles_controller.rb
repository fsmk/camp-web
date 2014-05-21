class ArticlesController < InheritedResources::Base
  def index
    @articles = Article.all
    @articles_by_date = @articles.group_by(&:event_date)
    @date = params[:date] ? Date.parse(params[:date]) : Date.today
  end
end