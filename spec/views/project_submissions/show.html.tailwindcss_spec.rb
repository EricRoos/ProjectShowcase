require 'rails_helper'

RSpec.describe "project_submissions/show", type: :view do
  before(:each) do
    @project_submission = assign(:project_submission, ProjectSubmission.create!(
      url: "Url",
      project: nil,
      user: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Url/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
