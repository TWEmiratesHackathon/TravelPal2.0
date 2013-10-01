require 'spec_helper'

describe "missions/edit" do
  before(:each) do
    @mission = assign(:mission, stub_model(Mission,
      :name => "MyString",
      :description => "MyText",
      :task_count => 1,
      :count => 1,
      :rank => 1
    ))
  end

  it "renders the edit mission form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", mission_path(@mission), "post" do
      assert_select "input#mission_name[name=?]", "mission[name]"
      assert_select "textarea#mission_description[name=?]", "mission[description]"
      assert_select "input#mission_task_count[name=?]", "mission[task_count]"
      assert_select "input#mission_count[name=?]", "mission[count]"
      assert_select "input#mission_rank[name=?]", "mission[rank]"
    end
  end
end
