require 'rails_helper'

RSpec.describe ProjectsUser, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"

  describe "validate projects_user model" do
    subject {FactoryGirl.build :projects_user}

    it 'should validate user' do
      expect(subject).to be_valid

      subject.user = nil

      expect(subject).not_to be_valid
    end

    it 'should validate project' do
      expect(subject).to be_valid

      subject.project = nil

      expect(subject).not_to be_valid
    end
  end
end
