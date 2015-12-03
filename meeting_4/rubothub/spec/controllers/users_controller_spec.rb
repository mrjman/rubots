require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  describe 'GET show' do
    context 'with valid params' do
      let(:user) { FactoryGirl.create :user }
      before do
        get :show, id: user
      end
      it 'should return success' do
        expect(response).to be_success
      end
    end

    context 'invalid params'
    before do
      get :show, id: -1
      
    end
  end
end
