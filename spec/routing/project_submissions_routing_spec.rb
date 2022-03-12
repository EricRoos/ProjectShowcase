require "rails_helper"

RSpec.describe ProjectSubmissionsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/project_submissions").to route_to("project_submissions#index")
    end

    it "routes to #new" do
      expect(get: "/project_submissions/new").to route_to("project_submissions#new")
    end

    it "routes to #show" do
      expect(get: "/project_submissions/1").to route_to("project_submissions#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/project_submissions/1/edit").to route_to("project_submissions#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/project_submissions").to route_to("project_submissions#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/project_submissions/1").to route_to("project_submissions#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/project_submissions/1").to route_to("project_submissions#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/project_submissions/1").to route_to("project_submissions#destroy", id: "1")
    end
  end
end
