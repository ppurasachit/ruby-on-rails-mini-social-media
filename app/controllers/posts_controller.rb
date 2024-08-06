# app/controllers/posts_controller.rb
class PostsController < ApplicationController
  # GET /posts
  def index
    @posts = Post.all
    render json: @posts
  end

  # GET /users/:user_id/posts
  def user_index
    @user = User.find(params[:user_id])
    @posts = @user.posts
    render json: @posts
  end

  # GET /users/:user_id/posts/:id
  def show
    @user = User.find(params[:user_id])
    @post = @user.posts.find(params[:id])
    render json: @post
  end

  # POST /users/:user_id/posts
  def create
    @user = User.find(params[:user_id])
    @post = @user.posts.new(post_params)
    if @post.save
      render json: @post, status: :created
    else
      render json: @post.errors, status: :unprocessable_entity
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :content)
  end
end
