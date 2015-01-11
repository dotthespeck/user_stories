class StoriesController < ApplicationController

  skip_before_filter :verify_authenticity_token, :only => :create

  def index
    @stories = Story.all
    @categories = Category.all
  end

  def create
    @story = Story.create(sentence: params[:story], category_id: params[:category], user: current_user)
    if @story.save
      redirect_to stories_path, notice: 'User story saved!'
    else
      redirect_to stories_path, notice: 'You must be signed in to save a story'
    end
  end

  def new

  end

  def upvote
    @story = Story.find(params[:id])
    @story.votes.create
    redirect_to(stories_path)
  end

end
