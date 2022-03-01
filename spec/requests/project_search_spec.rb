require 'rails_helper'

RSpec.describe "ProjectSearches", type: :request do
  describe "GET /create" do
    it "returns http success" do
      get "/project_search/create"
      expect(response).to have_http_status(:success)
    end
  end

end
