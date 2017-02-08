class PostsController < ApplicationController
  def index
    @posts = Post.all.order('created_at DESC')
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to posts_path
      flash[:notice] = "You've published your post successfully."
    else
      redirect_to posts_path
      flash[:notice] = "Failed."
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
    flash[:notice] = "You've deleted your post successfully."
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to posts_path
      flash[:notice] = "You've updated your post successfully."
    else
      render 'new'
    end
  end
private
    def post_params
      params.require(:post).permit(:title, :content)
    end
end
