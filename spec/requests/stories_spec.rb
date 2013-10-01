require 'spec_helper'

describe "Stories" do

  before do
    @user = User.new(:username => 'jeff',:password_digest=>'55555',:email=>'abc@yahoo.com')
    #if just use user, it can only be used in before block.  Need to use @user to be able to use in the it block below
    @user.save
    visit login_url
    fill_in "username", :with => @user.username
    fill_in "password", :with => @user.password_digest
    click_button "Login"  #using input value here

  end

  describe "Login and test story functions" do

    it "should go to add a story page" do

      visit new_story_path

      page.should have_content('New story')

    end

    it "should create a story" do

      visit new_story_path
      fill_in "story[location]", :with => 'USA'
      click_button "Create Story"


      entry = Story.find_by_user_id(@user.id)
      entry.location == 'USA'

    end



  end
end
