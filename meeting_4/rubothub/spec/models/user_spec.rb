require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    let(:user) { FactoryGirl.build :user }

    it 'should require first name' do
      expect(user).to be_valid
      user.first_name = nil
      expect(user).not_to be_valid
    end

    it 'should require last name' do
      expect(user).to be_valid
      user.last_name = nil
      expect(user).not_to be_valid
    end

    it 'should require email' do
      expect(user).to be_valid
      user.email = nil
      expect(user).not_to be_valid
    end

    it 'should require password' do
      expect(user).to be_valid
      user.password = nil
      expect(user).not_to be_valid
    end

    it 'should have 8 characters' do
      expect(user).to be_valid
      user.password = "1erwe"
      expect(user).not_to be_valid
    end

    it 'should have one number' do
      expect(user).to be_valid
      user.password = "qwertsdfs"
      expect(user).not_to be_valid
    end

    it 'should have 1 alpha character' do
      expect(user).to be_valid
      user.password = "1234567890"
      expect(user).not_to be_valid
    end
  end
end
