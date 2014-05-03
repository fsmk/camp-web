class ArticlesController < InheritedResources::Base
  def index
    @articles = Article.all
    @articles_by_date = @articles.group_by(&:event_date)
  end
  def create
    @article = Article.new article_params
    Rails.logger.info p "*****************"
    Rails.logger.info p @article.event_date
    Rails.logger.info p "*****************"
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
