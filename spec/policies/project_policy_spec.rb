require 'rails_helper'

RSpec.describe ProjectPolicy, type: :policy do
  let(:user) { User.new }

  subject { described_class }

  permissions ".scope" do
    pending "add some examples to (or delete) #{__FILE__}"
  end

  permissions :show? do
    it { is_expected.to permit(user, build(:project)) }
  end

  permissions :create? do
    it { is_expected.to permit(user) }
  end

  permissions :update?, :edit?, :destroy? do
    it { is_expected.to permit(user, build(:project, creator: user)) }
    context 'when the project creator is not the user' do
      it { is_expected.not_to permit(user, build(:project)) }
    end
  end

end
