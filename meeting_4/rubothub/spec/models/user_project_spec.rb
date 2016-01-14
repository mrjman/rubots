require 'rails_helper'

RSpec.describe UserProject, type: :model do
  describe 'validations' do
    subject { FactoryGirl.build :user_project }

    it 'should require user' do
      expect(subject).to be_valid
      subject.user = nil
      expect(subject).to be_invalid
    end

    it 'should require project' do
      expect(subject).to be_valid
      subject.project = nil
      expect(subject).to be_invalid
    end
  end
end
