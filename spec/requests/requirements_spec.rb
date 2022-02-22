require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/requirements", type: :request do
  
  # This should return the minimal set of attributes required to create a valid
  # Requirement. As you add validations to Requirement, be sure to
  # adjust the attributes here as well.
  let(:project) { FactoryBot.create(:project) }
  let(:valid_attributes) {{
    project_id: project.id,
    story: "<b>Foo</b>bar",
    description: 'foo'
  }}

  let(:invalid_attributes) {{
    story: nil
  }}

  describe "GET /index" do
    it "renders a successful response" do
      Requirement.create! valid_attributes
      get project_requirements_url(project)
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      requirement = Requirement.create! valid_attributes
      get requirement_url(requirement)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_project_requirement_url(project)
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      requirement = Requirement.create! valid_attributes
      get edit_requirement_url(requirement)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Requirement" do
        expect {
          post project_requirements_url(project), params: { requirement: valid_attributes }
        }.to change(Requirement, :count).by(1)
      end

      it "redirects to the created requirement" do
        post project_requirements_url(project), params: { requirement: valid_attributes }
        expect(response).to redirect_to(project_requirements_url(project))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Requirement" do
        expect {
          post project_requirements_url(project), params: { requirement: invalid_attributes }
        }.to change(Requirement, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post project_requirements_url(project), params: { requirement: invalid_attributes }
        expect(response).to have_http_status(422)
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {{
        story: 'updated',
        description: 'updated'
      }}

      it "updates the requested requirement" do
        requirement = Requirement.create! valid_attributes
        patch requirement_url(requirement), params: { requirement: new_attributes }
        requirement.reload
      end

      it "redirects to the requirement" do
        requirement = Requirement.create! valid_attributes
        patch requirement_url(requirement), params: { requirement: new_attributes }
        requirement.reload
        expect(response).to redirect_to(project_requirements_url(project))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        requirement = Requirement.create! valid_attributes
        patch requirement_url(requirement), params: { requirement: invalid_attributes }
        expect(response).to have_http_status(422)
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested requirement" do
      requirement = Requirement.create! valid_attributes
      expect {
        delete requirement_url(requirement)
      }.to change(Requirement, :count).by(-1)
    end

    it "redirects to the requirements list" do
      requirement = Requirement.create! valid_attributes
      delete requirement_url(requirement)
      expect(response).to redirect_to(project_requirements_url(requirement.project))
    end
  end
end
