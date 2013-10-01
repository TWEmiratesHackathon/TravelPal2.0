require "spec_helper"

describe MissionStoriesController do
  describe "routing" do

    it "routes to #index" do
      get("/mission_stories").should route_to("mission_stories#index")
    end

    it "routes to #new" do
      get("/mission_stories/new").should route_to("mission_stories#new")
    end

    it "routes to #show" do
      get("/mission_stories/1").should route_to("mission_stories#show", :id => "1")
    end

    it "routes to #edit" do
      get("/mission_stories/1/edit").should route_to("mission_stories#edit", :id => "1")
    end

    it "routes to #create" do
      post("/mission_stories").should route_to("mission_stories#create")
    end

    it "routes to #update" do
      put("/mission_stories/1").should route_to("mission_stories#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/mission_stories/1").should route_to("mission_stories#destroy", :id => "1")
    end

  end
end
