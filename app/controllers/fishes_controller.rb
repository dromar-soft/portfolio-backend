# frozen_string_literal: true

# Fishes controller
class FishesController < ApplicationController
  def new
    @fish = Fish.new
  end

  def create
    @fish = Fish.new(name: params[:name])
    if @fish.save
      flash[:notice] = '追加完了!'
      redirect_to('/')
    else
      render('fishes/new')
    end
  end
end
