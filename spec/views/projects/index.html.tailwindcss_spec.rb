require 'rails_helper'

RSpec.describe "projects/index", type: :view do
  let(:projects){ [
    create(:project),
    create(:project),
  ]}

  before(:each) do
    assign(:projects, projects)
  end

  it "renders a list of projects" do
    render
    projects.each do |project|
      assert_select "div", id: dom_id(project)
    end
  end
end
