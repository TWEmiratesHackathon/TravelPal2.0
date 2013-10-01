require "spec_helper"

describe TaskTagshipsController do
  describe "routing" do

    it "routes to #index" do
      get("/task_tagships").should route_to("task_tagships#index")
    end

    it "routes to #new" do
      get("/task_tagships/new").should route_to("task_tagships#new")
    end

    it "routes to #show" do
      get("/task_tagships/1").should route_to("task_tagships#show", :id => "1")
    end

    it "routes to #edit" do
      get("/task_tagships/1/edit").should route_to("task_tagships#edit", :id => "1")
    end

    it "routes to #create" do
      post("/task_tagships").should route_to("task_tagships#create")
    end

    it "routes to #update" do
      put("/task_tagships/1").should route_to("task_tagships#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/task_tagships/1").should route_to("task_tagships#destroy", :id => "1")
    end

  end
end
