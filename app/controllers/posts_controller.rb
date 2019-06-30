# frozen_string_literal: true

require 'time'

# PostController
class PostsController < ApplicationController
  def index
    @posts = Post.order('datetime DESC')
    @fishes = Fish.all
    @lures = Lure.all
    @points = Point.all
  end

  def search
    @posts = Post.all
    @posts = filter(@posts, 'fish_id', params[:fish_id])
    @posts = filter(@posts, 'lure_id', params[:lure_id])
    @posts = filter(@posts, 'point_id', params[:point_id])
    @posts = @posts.order('datetime DESC')
    @fishes = Fish.all
    @lures = Lure.all
    @points = Point.all
    render('posts/index')
  end

  def detail
    @post = Post.find_by(id: params[:id])
    redirect_to('/posts/index') unless @post
  end

  def new
    @post = Post.new
    @fishes = Fish.all
    @lures = Lure.all
    @points = Point.all
  end

  def create
    @post = Post.new
    @fishes = Fish.all
    @post.datetime = datetime_parse_str(params[:datetime])
    @post.fish_id = params[:fish_id].to_i
    @post.size_millimeter = params[:size_centimeter].to_f * 10
    @post.weight_gram = params[:weight_gram].to_i
    @post.point_id = params[:point_id].to_i
    # @post.image_name = params[:image_name]
    @post.image = params[:image]
    @post.lure_id = params[:lure_id].to_i
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

  def filter(posts, sym, id_str)
    if id_str.empty?
      posts
    else
      posts&.where("#{sym} = #{id_str}")
    end
  end
end
