
class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def edit
    @post = Post.find(params[:id])
  end

  def create
    @post = Post.new(params[:post])
    if @post.save
      redirect_to @post, notice: "Post created"
    else render :new
    end
  end

  def update
    @post = Post.find(params[:id])
    if @post.update_attribues(params[:post])
      redirect_to @post, notice: "Post updated"
    else render :edit
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
  end
end
