require 'spec_helper'

describe "tasks/edit" do
  before(:each) do
    @task = assign(:task, stub_model(Task,
      :name => "MyString",
      :description => "MyText",
      :information => "MyText",
      :score => 1,
      :hint => "MyText",
      :count => 1,
      :rank => 1.5,
      :answer => 1,
      :mission_id => 1
    ))
  end

  it "renders the edit task form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", task_path(@task), "post" do
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
