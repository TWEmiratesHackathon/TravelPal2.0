require 'spec_helper'

describe "mission_stories/edit" do
  before(:each) do
    @mission_story = assign(:mission_story, stub_model(MissionStory,
      :mission_id => 1,
      :user_id => 1,
      :like_count => 1
    ))
  end

  it "renders the edit mission_story form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", mission_story_path(@mission_story), "post" do
      assert_select "input#mission_story_mission_id[name=?]", "mission_story[mission_id]"
      assert_select "input#mission_story_user_id[name=?]", "mission_story[user_id]"
      assert_select "input#mission_story_like_count[name=?]", "mission_story[like_count]"
    end
  end
end
