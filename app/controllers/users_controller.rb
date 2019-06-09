class UsersController < ApplicationController
  def login_form
  end

  def new
  end

  def create
    @user = User.new()
    @user.name = params[:name]
    @user.email = params[:email]
    @user.password = params[:password]
    if @user.save
      redirect_to("/posts/index")
    else
      render("/users/new")
    end
  end
end
