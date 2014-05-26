class ArticlesController < ApplicationController
	def new
	end

	def create
		@article = Article.create(params[:article].permit(:title, :text))
		redirect_to @article
  end
end
