class ArticlesController < ApplicationController
    def new
    end

    def show
        @article = Article.find(params[:id])
    end

    def create
        @article = Article.new(article_params)

        if @article.save
          redirect_to @article
        else
          redirect_to 'new'
        end
    end

    def index
      @articles = Article.all 
    end

    private
      def article_params
        params.require(:article).permit(:title, :text)
      end

end
