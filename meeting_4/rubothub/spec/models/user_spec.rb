require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    let(:user) { FactoryGirl.build :user, first_name: "Steve" }
    it 'should have first_name' do
      expect(user.valid?).to be true
    end
  end
end
