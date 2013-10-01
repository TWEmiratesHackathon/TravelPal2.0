require 'spec_helper'

describe Story do

  #before do
  #  @story = Story.new(:location=>'USA',:story_entry=>'I had fun')
  #end

  it "must have a location" do
    subject.should have(1).error_on(:location) #check presence of location
  end

  it "should have location set to 'USA'" do
    @story = Story.new(:location=>'USA')
    @story.location == 'USA'
  end

  it "should have story_entry set to 'I had fun'" do
    @story = Story.new(:location=>'USA',:story_entry=>'I had fun')
    @story.story_entry == 'I had fun'
  end

end
