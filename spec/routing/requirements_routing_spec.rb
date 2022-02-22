require "rails_helper"

RSpec.describe RequirementsController, type: :routing do

  describe "routing" do
    it "routes to #index" do
      expect(get: "/projects/1/requirements").to route_to("requirements#index", project_id: '1')
    end

    it "routes to #new" do
      expect(get: "/projects/1/requirements/new").to route_to("requirements#new", project_id: '1')
    end

    it "routes to #show" do
      expect(get: "/requirements/1").to route_to("requirements#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/requirements/1/edit").to route_to("requirements#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/projects/1/requirements").to route_to("requirements#create", project_id: '1')
    end

    it "routes to #update via PUT" do
      expect(put: "/requirements/1").to route_to("requirements#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/requirements/1").to route_to("requirements#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/requirements/1").to route_to("requirements#destroy", id: "1")
    end
  end
end
