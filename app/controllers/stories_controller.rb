class StoriesController < ApplicationController

  skip_before_filter :verify_authenticity_token, :only => :create

  def index
    @stories = Story.all
    @categories = Category.all
  end

  def create
    @story = Story.create(sentence: params[:story], category_id: params[:category], user: current_user )
    redirect_to stories_path
  end

  def new

  end
end
