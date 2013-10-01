require 'spec_helper'

describe "mission_stories/new" do
  before(:each) do
    assign(:mission_story, stub_model(MissionStory,
      :mission_id => 1,
      :user_id => 1,
      :like_count => 1
    ).as_new_record)
  end

  it "renders new mission_story form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", mission_stories_path, "post" do
      assert_select "input#mission_story_mission_id[name=?]", "mission_story[mission_id]"
      assert_select "input#mission_story_user_id[name=?]", "mission_story[user_id]"
      assert_select "input#mission_story_like_count[name=?]", "mission_story[like_count]"
    end
  end
end
