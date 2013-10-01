require 'spec_helper'

describe "coordinates/edit" do
  before(:each) do
    @coordinate = assign(:coordinate, stub_model(Coordinate,
      :latitude => 1.5,
      :longitude => 1.5,
      :task_id => 1
    ))
  end

  it "renders the edit coordinate form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", coordinate_path(@coordinate), "post" do
      assert_select "input#coordinate_latitude[name=?]", "coordinate[latitude]"
      assert_select "input#coordinate_longitude[name=?]", "coordinate[longitude]"
      assert_select "input#coordinate_task_id[name=?]", "coordinate[task_id]"
    end
  end
end
