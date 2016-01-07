require 'rails_helper'

RSpec.describe ProjectsController, type: :controller do
  describe 'GET show' do
    context 'with valid params' do
      let(:project) { FactoryGirl.create :project }
      before do
        get :show, id: project
      end
      it 'should return success' do
        expect(response).to be_success
      end
    end
  end
end
