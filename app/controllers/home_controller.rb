class HomeController < ApplicationController
  skip_before_filter :authorize

  def index
    @stories = Story.paginate(:page => params[:page], :per_page => 8)
    # testing!
    #puts "YOYOYOYOYOYOYOYOOOYOY"
    #puts "YOYOYOYOYOYOYOYOOOYOY"
    #puts "YOYOYOYOYOYOYOYOOOYOY"
    #puts "YOYOYOYOYOYOYOYOOOYOY"
    #puts "YOYOYOYOYOYOYOYOOOYOY"
    #puts "YOYOYOYOYOYOYOYOOOYOY"
    #puts params[:page]
    #puts params[:page].is_a?(String)
    #puts @stories
    @story_images = []
    @stories.each{ |story| @story_images << story.travel_image.url(:medium)}
    #puts @story_images
    #puts @stories.total_pages
    #puts @stories.current_page
    #puts @stories.previous_page
    #puts @stories.next_page


    @response = [@stories,@story_images,@stories.total_pages,@stories.current_page]
    #puts @stories.inspect
    #

    #@stories['page_number'] = :page

    respond_to do |format|
      format.html
      format.json {render :json => @response}
      format.xml {render :xml => @response} #REST API for XML request (able to be tested with XML request, http://localhost:3000/home.xml)
    end

  end

  def ajax_page
    @stories = Story.find_by_user_id(1)
    respond_to do |format|
      format.json {render :json => @stories}
    end
    #render :json => @stories
    #format.json {render :json => @stories}
  end



end
