class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new 
  end 

  def create
    # @post = Post.new
    # @post.title = params[:title]
    # @post.description = params[:description]
    # @post.save
    # redirect_to posts_path

    Post.create(title: params[:post][:title], description: params[:post][:description])
    redirect_to posts_path
  end 
  
end
