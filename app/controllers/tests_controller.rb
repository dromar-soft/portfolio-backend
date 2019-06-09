class TestsController < ApplicationController
  def alert
    flash[:notice] ="test"
    redirect_to("/")
  end
end
