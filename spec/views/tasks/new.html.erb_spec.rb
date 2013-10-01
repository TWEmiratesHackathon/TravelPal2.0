require 'spec_helper'

describe "tasks/new" do
  before(:each) do
    assign(:task, stub_model(Task,
      :name => "MyString",
      :description => "MyText",
      :information => "MyText",
      :score => 1,
      :hint => "MyText",
      :count => 1,
      :rank => 1.5,
      :answer => 1,
      :mission_id => 1
    ).as_new_record)
  end

  it "renders new task form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", tasks_path, "post" do
      assert_select "input#task_name[name=?]", "task[name]"
      assert_select "textarea#task_description[name=?]", "task[description]"
      assert_select "textarea#task_information[name=?]", "task[information]"
      assert_select "input#task_score[name=?]", "task[score]"
      assert_select "textarea#task_hint[name=?]", "task[hint]"
      assert_select "input#task_count[name=?]", "task[count]"
      assert_select "input#task_rank[name=?]", "task[rank]"
      assert_select "input#task_answer[name=?]", "task[answer]"
      assert_select "input#task_mission_id[name=?]", "task[mission_id]"
    end
  end
end
