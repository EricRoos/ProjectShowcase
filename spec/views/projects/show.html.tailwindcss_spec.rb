require 'rails_helper'

RSpec.describe "projects/show", type: :view do
  let(:project) { create(:project, title: 'Title') }
  before(:each) do
    @project = assign(:project, project)
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
  end
end
