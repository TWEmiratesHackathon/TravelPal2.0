class TaskTagshipsController < ApplicationController
  # GET /task_tagships
  # GET /task_tagships.json
  def index
    @task_tagships = TaskTagship.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @task_tagships }
    end
  end

  # GET /task_tagships/1
  # GET /task_tagships/1.json
  def show
    @task_tagship = TaskTagship.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @task_tagship }
    end
  end

  # GET /task_tagships/new
  # GET /task_tagships/new.json
  def new
    @task_tagship = TaskTagship.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @task_tagship }
    end
  end

  # GET /task_tagships/1/edit
  def edit
    @task_tagship = TaskTagship.find(params[:id])
  end

  # POST /task_tagships
  # POST /task_tagships.json
  def create
    @task_tagship = TaskTagship.new(params[:task_tagship])

    respond_to do |format|
      if @task_tagship.save
        format.html { redirect_to @task_tagship, notice: 'Task tagship was successfully created.' }
        format.json { render json: @task_tagship, status: :created, location: @task_tagship }
      else
        format.html { render action: "new" }
        format.json { render json: @task_tagship.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /task_tagships/1
  # PUT /task_tagships/1.json
  def update
    @task_tagship = TaskTagship.find(params[:id])

    respond_to do |format|
      if @task_tagship.update_attributes(params[:task_tagship])
        format.html { redirect_to @task_tagship, notice: 'Task tagship was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @task_tagship.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /task_tagships/1
  # DELETE /task_tagships/1.json
  def destroy
    @task_tagship = TaskTagship.find(params[:id])
    @task_tagship.destroy

    respond_to do |format|
      format.html { redirect_to task_tagships_url }
      format.json { head :no_content }
    end
  end
end
