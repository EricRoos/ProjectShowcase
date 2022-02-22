require 'rails_helper'

RSpec.describe "requirements/show", type: :view do
  let(:project) { FactoryBot.create(:project) }
  before(:each) do
    @requirement = assign(:requirement, Requirement.create!(
      project: project,
      story: 'foo'
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
  end
end
