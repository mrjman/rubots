require 'rails_helper'

RSpec.describe Test, type: :model do
  before do
    FactoryGirl.build(:test)
  end

  it { should validate_presence_of :title }
end
