# frozen_string_literal: true

require 'time'

# PostController
class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new
    @post.datetime = datetime_parse_str(params[:datetime])
    @post.fish_id = params[:fish_id].to_i
    @post.size_millimeter = params[:size_centimeter].to_f * 10
    @post.weight_gram = params[:weight_gram].to_i
    @post.place = params[:place]
    # @post.image_name = params[:image_name]
    @post.image = params[:image]
    @post.method = params[:method]
    @post.user_id = @current_user.id
    if @post.save
      flash[:notice] = '投稿完了!'
      redirect_to('/posts/index')
    else
      render('posts/new')
    end
  end

  def datetime_parse_str(str)
    return if str.empty?
    Time.zone.parse(params[:datetime]) # DateTime.parseだと、config/application.rbのタイムゾーン設定が無視される
  end
end
