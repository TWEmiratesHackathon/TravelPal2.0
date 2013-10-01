require 'spec_helper'

describe "task_tagships/index" do
  before(:each) do
    assign(:task_tagships, [
      stub_model(TaskTagship,
        :task_id => 1,
        :tag_id => 2
      ),
      stub_model(TaskTagship,
        :task_id => 1,
        :tag_id => 2
      )
    ])
  end

  it "renders a list of task_tagships" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
