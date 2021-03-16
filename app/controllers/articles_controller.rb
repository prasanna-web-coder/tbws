class ArticlesController < ApplicationController
  protect_from_forgery prepend: true
  before_action :set_article, only: [:show, :update, :destroy]

  def create
    @article = Article.new(article_params)
    if @article.save
      render json: {
        status: 200,
        message: "Article successfully saved!",
        article: ArticleSerializer.new(@article)
      }
    else
      render json: {status: 422, message: humanize_error_msg(@article.errors)}
    end
  end

  def update
    if @article.update(article_params)
      render json: {
        status: 200,
        message: "Article successfully updated!",
        article: ArticleSerializer.new(@article)
      }
    else
      render json: {status: 422, message: humanize_error_msg(@article.errors)}
    end
  end

  def show
    render json: {status: 200, article: ArticleSerializer.new(@article)}
  end

  def destroy
    if @article.destroy
      render json: {status: 200, message: "Article successfully deleted!"}
    else
      render json: {status: 422, message: humanize_error_msg(@article.errors)}
    end
  end

  private

  def article_params
    params.require(:article).permit(:a_title, :a_image_url, :a_content, :u_id)
  end

  def set_article
    @article = Article.find_by_id params[:id]
    unless @article
      render json: {status: 404, message: "Article not found"}
    end
  end

  def humanize_error_msg(errors)
    error = errors.messages.map{ |k, v| v.last }.flatten
    error.join(', ')
  end
end