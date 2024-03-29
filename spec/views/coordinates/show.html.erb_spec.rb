require 'spec_helper'

describe "coordinates/show" do
  before(:each) do
    @coordinate = assign(:coordinate, stub_model(Coordinate,
      :latitude => 1.5,
      :longitude => 1.5,
      :task_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1.5/)
    rendered.should match(/1.5/)
    rendered.should match(/1/)
  end
end
