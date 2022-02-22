require 'rails_helper'

RSpec.describe "requirements/edit", type: :view do
  let(:project) { FactoryBot.create(:project) }
  before(:each) do
    @requirement = assign(:requirement, create(:requirement,
      project: project,
    ))
  end

  it "renders the edit requirement form" do
    render

    assert_select "form[action=?][method=?]", requirement_path(@requirement), "post" do
    end
  end
end
