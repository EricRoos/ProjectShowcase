require 'rails_helper'

RSpec.describe "projects/new", type: :view do
  let(:project) { build(:project) }
  let(:current_user) { build(:user) }

  before(:each) do
    assign(:project, project)
    allow(view).to receive(:current_user).and_return(current_user)
  end

  it "renders new project form" do
    render

    assert_select "form[action=?][method=?]", projects_path, "post" do

      assert_select "input[name=?]", "project[title]"
    end
  end
end
