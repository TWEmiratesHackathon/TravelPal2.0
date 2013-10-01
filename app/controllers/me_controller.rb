class MeController < ApplicationController
  # GET /missions
  # GET /missions.json
  def index
    MissionStory.includes(:mission, :transactions)
    #@mission_stories = MissionStory.where("user_id = ?", session[:user_id])
    @mission_stories = MissionStory.all

    respond_to do |format|
      format.html
      format.json { render json: @missions }
    end
  end
end
