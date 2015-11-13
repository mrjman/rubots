require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    let(:user) { FactoryGirl.build :user }

    it 'should validate presence of first_name' do
      expect(user).to be_valid

      user.first_name = nil

      expect(user).not_to be_valid
    end

    it 'should validate presence of last_name' do
      expect(user).to be_valid

      user.last_name = nil

      expect(user).not_to be_valid
    end

    it 'should validate presence of email' do
      expect(user).to be_valid

      user.email = nil

      expect(user).not_to be_valid
    end

    it 'should validate presence of password' do
      expect(user).to be_valid

      user.password = nil

      expect(user).not_to be_valid
    end
  end
end
