class UsersController < ApplicationController
  def login_form
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new()
    @user.name = params[:name]
    @user.email = params[:email]
    @user.password = params[:password]
    if @user.save
      redirect_to("/posts/index")
      flash[:notice] = "新規登録完了!"
    else
      render("/users/new")
    end
  end
end
