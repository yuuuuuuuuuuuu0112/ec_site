class PostsController < ApplicationController
  before_action :authenticate_user!,except: [:index]
  def index
    @q = Post.ransack(params[:q])
    @posts = @q.result(distinct: true).order("id DESC").page(params[:page]).per(5)
  end

  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
    @comments = @post.comments
    if @comment.save
      redirect_to post_path(@post)
    else 
      render :show 
    end
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    if @post.save
      redirect_to post_path(@post)
    else 
      render :new 
    end
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
    redirect_to post_path(@post)
    else 
      render :edit
    end
  end


  def edit
    @post= Post.find(params[:id])
    if @post.user != current_user
      redirect_to posts_path, alert: "不正なアクセスです"
    end

  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to user_path(current_user)
  end


  private
  def post_params
    params.require(:post).permit(:title,:body,:image)
  end

end
