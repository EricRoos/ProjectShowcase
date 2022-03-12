require 'rails_helper'

RSpec.describe "project_submissions/edit", type: :view do
  before(:each) do
    @project_submission = assign(:project_submission, ProjectSubmission.create!(
      url: "MyString",
      project: nil,
      user: nil
    ))
  end

  it "renders the edit project_submission form" do
    render

    assert_select "form[action=?][method=?]", project_submission_path(@project_submission), "post" do

      assert_select "input[name=?]", "project_submission[url]"

      assert_select "input[name=?]", "project_submission[project_id]"

      assert_select "input[name=?]", "project_submission[user_id]"
    end
  end
end
