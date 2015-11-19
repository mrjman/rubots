require 'rails_helper'

RSpec.describe SignupController, type: :controller do
  describe '#new' do
    before do
      get :new
    end

    it 'should be a success' do
      expect(response).to be_ok
    end

    it 'should have a user' do
      expect(assigns[:user]).to be
    end

    it 'should render new template' do
      expect(response).to render_template :new
    end
  end

  #describe '#create' do
  #  before do
  #    post :create
  #  end

  #  it 'should be a success' do
  #    expect(response).not_to be_ok
  #  end
  #end
end
