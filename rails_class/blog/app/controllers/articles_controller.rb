class ArticlesController < ApplicationController

  # http_basic_authenticate_with name: "dhh", password: "secret", except: [:index, :show]

  before_action :authenticate_user!, except: [:index, :show, :draft]
  # protect_from_forgery except: [:show]

  def index
    @articles = Article.all
  end

  def draft
    # render 'show', params: {id: params[:article_id]}
    redirect_to "/articles/#{params[:article_id]}/show"#, params: {id: params[:article_id]}
  end

  def new
    @article = Article.new
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
    # @article ||= Article.find(params[:article_id])
    # respond_to do |format|
    #   # format.html {render html: @article}
    #   format.json {render json: @article}
    #   format.xml {render xml: @article}
    #   format.js {render xml: @article}
    # end
    # render js: "alert('Hello Rails');", 
    # render text: 'raw'#, status: 301
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
 
    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
   
    redirect_to articles_path
  end

  private
    def article_params
      params.require(:article).permit(:title, :text)
    end
end
