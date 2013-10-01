class MissionStoriesController < ApplicationController
  # GET /mission_stories
  # GET /mission_stories.json
  def index
    @mission_stories = MissionStory.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @mission_stories }
    end
  end

  # GET /mission_stories/1
  # GET /mission_stories/1.json
  def show
    @mission_story = MissionStory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @mission_story }
    end
  end

  # GET /mission_stories/new
  # GET /mission_stories/new.json
  def new
    @mission_story = MissionStory.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @mission_story }
    end
  end

  # GET /mission_stories/1/edit
  def edit
    @mission_story = MissionStory.find(params[:id])
  end

  # POST /mission_stories
  # POST /mission_stories.json
  def create
    @mission_story = MissionStory.new(params[:mission_story])

    respond_to do |format|
      if @mission_story.save
        format.html { redirect_to @mission_story, notice: 'Mission story was successfully created.' }
        format.json { render json: @mission_story, status: :created, location: @mission_story }
      else
        format.html { render action: "new" }
        format.json { render json: @mission_story.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /mission_stories/1
  # PUT /mission_stories/1.json
  def update
    @mission_story = MissionStory.find(params[:id])

    respond_to do |format|
      if @mission_story.update_attributes(params[:mission_story])
        format.html { redirect_to @mission_story, notice: 'Mission story was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @mission_story.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mission_stories/1
  # DELETE /mission_stories/1.json
  def destroy
    @mission_story = MissionStory.find(params[:id])
    @mission_story.destroy

    respond_to do |format|
      format.html { redirect_to mission_stories_url }
      format.json { head :no_content }
    end
  end

  # GET /mission_stories/1/transactions
  # GET /mission_stories/1/transactions.json
  def transactions
    @transactions = Transaction.where("user_id = ? AND mission_story_id = ?", session[:user_id], params[:id])

    respond_to do |format|
      format.html
      format.json {render json: @transactions}
    end
  end
end
