require 'spec_helper'

describe "task_tagships/edit" do
  before(:each) do
    @task_tagship = assign(:task_tagship, stub_model(TaskTagship,
      :task_id => 1,
      :tag_id => 1
    ))
  end

  it "renders the edit task_tagship form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", task_tagship_path(@task_tagship), "post" do
      assert_select "input#task_tagship_task_id[name=?]", "task_tagship[task_id]"
      assert_select "input#task_tagship_tag_id[name=?]", "task_tagship[tag_id]"
    end
  end
end
