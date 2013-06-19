class Admin::ArticlesController < AdminController
  
  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new params[:article]

    if @article.save
      redirect_to admin_articles_path, flash: {success: t('flash.article.created')}
    else
      render :new
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    if @article.update_attributes params[:article]
      redirect_to admin_articles_path, flash: {success: t('flash.article.updated')}
    else
      render :edit
    end
  end

  def destroy
    @article = Article.find(params[:id])
    if @article.destroy
      redirect_to admin_articles_path, flash: {success: t('flash.article.destroyed')}
    else
      render :edit
    end
  end

end
