require 'rails_helper'

RSpec.describe "requirements/index", type: :view do
  let(:project) { FactoryBot.create(:project) }
  let(:requirements) { [
    FactoryBot.create(:requirement, project: project),
    FactoryBot.create(:requirement, project: project),
  ]}
  before(:each) do
    assign(:project, project)
    assign(:requirements, requirements)
    allow(view).to receive(:current_user).and_return(project.creator)
  end

  it "renders a list of requirements" do
    render
    requirements.each do |requirement|
      assert_select 'div', id: dom_id(requirement)
    end
  end
end
