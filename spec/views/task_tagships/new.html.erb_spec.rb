require 'spec_helper'

describe "task_tagships/new" do
  before(:each) do
    assign(:task_tagship, stub_model(TaskTagship,
      :task_id => 1,
      :tag_id => 1
    ).as_new_record)
  end

  it "renders new task_tagship form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", task_tagships_path, "post" do
      assert_select "input#task_tagship_task_id[name=?]", "task_tagship[task_id]"
      assert_select "input#task_tagship_tag_id[name=?]", "task_tagship[tag_id]"
    end
  end
end
