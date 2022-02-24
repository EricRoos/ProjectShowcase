require 'rails_helper'

RSpec.describe "projects/edit", type: :view do
  let(:project) { create(:project) }
  let(:current_user) { project.creator }
  before(:each) do
    assign(:project, project)
    allow(view).to receive(:current_user).and_return(current_user)
  end

  it "renders the edit project form" do
    render

    assert_select "form[action=?][method=?]", project_path(project), "post" do

      assert_select "input[name=?]", "project[title]"
    end
  end
end
