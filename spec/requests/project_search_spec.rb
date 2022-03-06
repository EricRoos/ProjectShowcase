require 'rails_helper'

RSpec.describe "ProjectSearches", type: :request do
  let(:current_user) { create(:user) }
  describe "GET /create" do
    it "returns http success" do
      sign_in current_user
      get "/project_search/create"
      expect(response).to have_http_status(:success)
    end
  end

end
