class ArticlesController < ApplicationController
	def index
		@articles = Article.all
	end

	def new
	end

	def create
		@article = Article.create(params[:article].permit(:title, :text))
		redirect_to @article
  end

  def show
  	@article = Article.find(params[:id])
  end
end
