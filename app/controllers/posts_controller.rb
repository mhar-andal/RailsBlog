class PostsController < ApplicationController
 skip_before_filter :verify_authenticity_token
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find_by(id: params[:id])
  end

  def new
  end

  def create
    @post = Post.new(title: params[:post][:title], body: params[:post][:body], author_id: 3)
    if @post.save
      redirect_to "/posts/#{@post.id}"
    else
      render :new
    end
  end

  

end
