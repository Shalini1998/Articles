class ArticlesController < ApplicationController
  # load_and_authorize_resource
   before_action :set_article, only: [:show, :edit, :update, :destroy]
   # before_action :authenticate_user!, except: [:show, :index]
   # GET /articles
 # GET /articles.json

	# http_basic_authenticate_with name: "dhh", password: "secret", except: [:index, :show]
	def index
	    @articles = Article.all
	  end
	def show
	  end
  def new
  	@article = Article.new
  end
  def edit
  end
 
 def create
   @article = Article.new(article_params)
  
  redirect_to do |format|
        if @article.save
          format.html { redirect_to @article, notice: 'Article was successfully created.' }
          format.json { render :show, status: :created, location: @article }
        else
          format.html { render :new }
          format.json { render json: @article.errors, status: :unprocessable_entity }
        end
      end
  end 

 def update
    redirect_to do |format|
          if @article.update(article_params)
            format.html { redirect_to @article, notice: 'Article was successfully updated.' }
            format.json { render :show, status: :ok, location: @article }
          else
            format.html { render :edit }
            format.json { render json: @article.errors, status: :unprocessable_entity }
          end
        end
    end
 
  def destroy
   @article.destroy
       respond_to do |format|
         format.html { redirect_to articles_url, notice: 'Article was successfully destroyed.' }
         format.json { head :no_content }
       end
   end

 private
   def article_params
     params.require(:article).permit(:title, :text , :description ,:Firstname ,:Lastname, :image)
   end

   def set_article
    @article = Article.find(params[:id])
  end

 end