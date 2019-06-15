require 'time'

class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new()
  end

  def create
    @post = Post.new()
    @post.datetime = DateTime.parse(params[:datetime])
    @post.fish_id = params[:fish_id].to_i
    @post.size_millimeter = params[:size_millimeter].to_i
    @post.weight_gram = params[:weight_gram].to_i
    @post.place = params[:place]
    @post.image_name = params[:image_name]
    @post.method = params[:method]
    @post.user_id = @current_user.id
    if @post.save
      flash[:notice] = "投稿完了!"
      redirect_to("/posts/index")
    else
      render("posts/new")
    end
  end
end
