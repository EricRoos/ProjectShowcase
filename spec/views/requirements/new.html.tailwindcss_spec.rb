require 'rails_helper'

RSpec.describe "requirements/new", type: :view do
  let(:project) { FactoryBot.create(:project) }
  before(:each) do
    assign(:requirement, Requirement.new(
      project: project,
      story: 'foo'
    ))
  end

  it "renders new requirement form" do
    render

    assert_select "form[action=?][method=?]", project_requirements_path(project), "post" do
    end
  end
end
