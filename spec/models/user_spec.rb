require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validators' do
    subject { FactoryBot.build(:user) }
    it { is_expected.to be_valid }
  end
end
