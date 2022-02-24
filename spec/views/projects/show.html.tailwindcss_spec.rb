require 'rails_helper'

RSpec.describe "projects/show", type: :view do
  let(:project) { create(:project, title: 'Title') }
  let(:current_user) { project.creator }
  before(:each) do
    allow(view).to receive(:current_user).and_return(current_user)
    assign(:project, project)
    render
  end

  subject { rendered }
  it { is_expected.to match(/Title/) }
  it { is_expected.to have_selector("a", text: 'Edit') }
  it { is_expected.to have_selector("button", text: 'Delete Project') }

  context 'when current user is not project creator' do
    let(:current_user) { create(:user) }
    it { is_expected.to_not have_selector("a", text: 'Edit') }
    it { is_expected.to_not have_selector("button", text: 'Delete Project') }
  end
end
