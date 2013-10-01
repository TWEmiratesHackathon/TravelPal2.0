require 'spec_helper'

describe StoriesController do

  it "should go to login page without if user didn't login" do

    get :new
    response.should redirect_to(login_url)
    #we do not do new_story_path here
    #if we do that, we will check page.should have_content('Please sign in')

  end

  it "should go to new story page after login" do
    @user = User.new(:username => 'jeff',:password_digest=>'55555',:email=>'abc@yahoo.com')
    #if just use user, it can only be used in before block.  Need to use @user to be able to use in the it block below
    @user.save
    session[:user_id] = @user.id
    #visit new_story_path
    get :new  #we can do this because we are in story controller
    response.status.should be(200)
  end

  it "should go to story edit page" do
    @user = User.new(:username => 'jeff',:password_digest=>'55555',:email=>'abc@yahoo.com')
    #if just use user, it can only be used in before block.  Need to use @user to be able to use in the it block below
    @user.save
    session[:user_id] = @user.id
    story = Story.new(:location=>'USA')
    story.save
    #visit edit_story_path
    get :edit, :id=> story.id  #we can do this because we are in story controller
    response.status.should be(200)

  end




end
