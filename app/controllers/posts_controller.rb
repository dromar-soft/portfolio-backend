class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new()
  end

  def create
    @post = Post.new()
    if true
      flash[:notice] = "投稿完了!"
      redirect_to("/posts/index")
    else
      render("posts/new")
    end
  end
end
