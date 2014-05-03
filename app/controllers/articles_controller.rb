class ArticlesController < InheritedResources::Base
  def index
    @articles = Article.all
    @articles_by_date = @articles.group_by(&:event_date)
    @date = params[:date] ? Date.parse(params[:date]) : Date.today
  end
  def create
    @article = Article.new article_params
    if @article.save
      redirect_to root_url
    else
      render 'new'
    end
  end

  private

  def article_params
    params.require(:article).permit(:name, :body, :event_date, :added_by)
  end
end
