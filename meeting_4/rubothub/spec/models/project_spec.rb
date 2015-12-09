require 'rails_helper'

RSpec.describe Project, type: :model do
  describe('validations') do
    subject { FactoryGirl.build :project }

    it('should have a title') do
      expect(subject).to be_valid

      subject.title = nil

      expect(subject).to be_invalid
    end
  end
end
