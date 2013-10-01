require 'spec_helper'

describe "task_tagships/show" do
  before(:each) do
    @task_tagship = assign(:task_tagship, stub_model(TaskTagship,
      :task_id => 1,
      :tag_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
