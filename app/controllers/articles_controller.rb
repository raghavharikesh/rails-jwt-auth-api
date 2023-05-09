class ArticlesController < ApplicationController
  def new
    @article = Article.new
  end
  
  def show
    @article = Article.find(params[:id])
  end
  #  Creating the article, 
  def create
       @article = Article.new(article_params)
       if @article.save
    SendNotificationsJob.set(wait: 25.seconds).perform_later(@article) #executing the background Job after article creation
    redirect_to article_path(@article.id)
       else
    render 'new'
       end
  end
  private
  def article_params
    params.require(:article).permit(:title, :body)
  end
end
