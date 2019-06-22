# frozen_string_literal: true

# UsersController Class
class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new
    @user.name = params[:name]
    @user.email = params[:email]
    @user.password = params[:password]
    if @user.save
      flash[:notice] = '新規登録完了!'
      redirect_to('/posts/index')
    else
      render('users/new')
    end
  end

  def login_form
    @user = User.new
  end

  def login
    @user = User.find_by(email: params[:email])
    if @user
      if @user.authenticate(params[:password])
        session[:user_id] = @user.id
        flash[:notice] = 'ログインしました'
        redirect_to('/posts/index')
      end
    else
      @email = params[:email]
      @password = params[:password]
      @error_message = 'メールアドレスまたはパスワードが一致しません'
      render('users/login_form')
    end
  end

  def logout
    session[:user_id] = nil
    flash[:notice] = 'ログアウトしました'
    redirect_to('/')
  end
end
