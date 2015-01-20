class VotesController < ApplicationController

  def create
    @vote = Vote.new(vote_params)
    if @vote.save
      redirect_to root_path, notice: "You have voted!"
    else
      if current_user
        redirect_to root_path, notice: "You can only vote once!"
      else
        redirect_to root_path, notice: "Please Sign In to Vote"
      end
    end
  end

  private

  def vote_params
    params.require(:vote).permit(:user_id, :story_id)
  end

end
