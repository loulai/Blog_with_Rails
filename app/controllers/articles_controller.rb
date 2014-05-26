class ArticlesController < ApplicationController
	def index
		@articles = Article.all
	end

	def new
		@article = Article.new
	end

	def create
		@article = Article.new(params[:article].permit(:title, :text))
		
		if @article.save
			redirect_to @article
		else
			flash[:notice] = 'Dude what kind of title is that'
			render 'new'
		end
  end

  def show
  	@article = Article.find(params[:id])
  end
end
