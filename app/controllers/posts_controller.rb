class PostsController < ApplicationController
  before_action :find_post, only: [:show, :edit, :update, :destroy]

  def index
    @posts=Post.order("created_at DESC")
  end

  def new
    @post=Post.new
    authorize @post
  end

  def create
    @post=Post.new(post_params)
    authorize @post
    if @post.save
      redirect_to posts_path
    else
      render 'new'
    end
  end

  def show
  end

  def edit
  end

  def update
    authorize @post
    if @post.update(post_params)
      redirect_to @post
    else
      render 'edit'
    end

  end

  def destroy
    authorize @post
    @post.destroy
    redirect_to root_path
  end

  private 

  def find_post
    @post=Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :body)
  end

end
