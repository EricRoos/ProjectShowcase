require 'rails_helper'

RSpec.describe "Dashboards", type: :request do
  let(:current_user) { create(:user) }
  
  # This should return the minimal set of attributes required to create a valid
  # Requirement. As you add validations to Requirement, be sure to
  # adjust the attributes here as well.
  let(:project) { FactoryBot.create(:project, creator: current_user) }

  describe "GET /show" do
    it "returns http success" do
      sign_in current_user
      get "/dashboard"
      expect(response).to have_http_status(:success)
    end
  end

end
