require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do
    subject {FactoryGirl.build :user}

    it 'should validate first name' do
      expect(subject).to be_valid

      subject.first_name = nil

      expect(subject).not_to be_valid
    end

    it 'should validate last name' do
      expect(subject).to be_valid

      subject.last_name = nil

      expect(subject).not_to be_valid
    end

    it 'should validate email' do
      expect(subject).to be_valid

      subject.email = nil

      expect(subject).not_to be_valid
    end

    it 'should validate password' do
      expect(subject).to be_valid

      subject.password = nil

      expect(subject).not_to be_valid
    end

    it 'should validate password length' do
      expect(subject).to be_valid

      subject.password = '123456789'

      expect(subject).not_to be_valid
    end
  end
end
