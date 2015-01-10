class StoriesController < ApplicationController
  def index
    @stories = Story.all
    @categories = Category.all
  end

  def create

  end

  def new

  end
end
