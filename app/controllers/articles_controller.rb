class ArticlesController < ApplicationController

  def index
    @article = Article.all.order("created_at DESC")
  end

  def new
    @article = Article.new
  end

  def edit
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article
    else
      render 'new'
    end
  end

  def show
    @article = Article.find(params[:id])
  end

  def update
  end

  def destroy
  end

  def article_params
    params.require(:article).permit(:title, :content)
  end
end
