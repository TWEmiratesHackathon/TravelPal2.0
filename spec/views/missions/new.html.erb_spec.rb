require 'spec_helper'

describe "missions/new" do
  before(:each) do
    assign(:mission, stub_model(Mission,
      :name => "MyString",
      :description => "MyText",
      :task_count => 1,
      :count => 1,
      :rank => 1
    ).as_new_record)
  end

  it "renders new mission form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", missions_path, "post" do
      assert_select "input#mission_name[name=?]", "mission[name]"
      assert_select "textarea#mission_description[name=?]", "mission[description]"
      assert_select "input#mission_task_count[name=?]", "mission[task_count]"
      assert_select "input#mission_count[name=?]", "mission[count]"
      assert_select "input#mission_rank[name=?]", "mission[rank]"
    end
  end
end
