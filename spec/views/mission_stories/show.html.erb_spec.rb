require 'spec_helper'

describe "mission_stories/show" do
  before(:each) do
    @mission_story = assign(:mission_story, stub_model(MissionStory,
      :mission_id => 1,
      :user_id => 2,
      :like_count => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
  end
end
