require 'spec_helper'

describe "missions/index" do
  before(:each) do
    assign(:missions, [
      stub_model(Mission,
        :name => "Name",
        :description => "MyText",
        :task_count => 1,
        :count => 2,
        :rank => 3
      ),
      stub_model(Mission,
        :name => "Name",
        :description => "MyText",
        :task_count => 1,
        :count => 2,
        :rank => 3
      )
    ])
  end

  it "renders a list of missions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
