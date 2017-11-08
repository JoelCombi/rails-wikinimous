class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]

  def index
    @articles = Article.all
  end

  def edit
  end

  def new
  end

  def show
  end

  private

  def article_params
    params.require(:article).permit(:details, :title)
  end

  def set_article
    @article = Article.find(params[:id])
  end
end


