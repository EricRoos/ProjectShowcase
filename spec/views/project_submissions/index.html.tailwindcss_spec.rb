require 'rails_helper'

RSpec.describe "project_submissions/index", type: :view do
  before(:each) do
    assign(:project_submissions, [
      ProjectSubmission.create!(
        url: "Url",
        project: nil,
        user: nil
      ),
      ProjectSubmission.create!(
        url: "Url",
        project: nil,
        user: nil
      )
    ])
  end

  it "renders a list of project_submissions" do
    render
    assert_select "tr>td", text: "Url".to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
