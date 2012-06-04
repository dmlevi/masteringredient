class PostsController < ApplicationController
 before_filter :require_active_user
 
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
    if @post.update_attributes(params[:post])
      redirect_to @post, notice: "Post updated"
    else render :edit
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
  end
  
  private

    def require_active_user
      redirect_to projects_path, alert: "An active account is required to perform the requested action." unless current_user.active?
    end
end
