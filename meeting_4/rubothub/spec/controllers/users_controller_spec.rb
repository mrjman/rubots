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
  end

  describe 'GET edit' do
    let(:user) { FactoryGirl.create :user }

    context 'when current user is myself' do
      before do
        session[:user_id] = user.id
        get :edit, id: user.id
      end
      it 'should return success' do
        expect(response).to be_success
      end

      it 'should render the edit template' do
        expect(response).to render_template :edit
      end
    end

    context 'when current user is not myself' do
      let(:other_user) { FactoryGirl.create :user }

      before do
        session[:user_id] = user.id
        get :edit, id: other_user.id
      end
      it 'should redirect to root' do
        expect(response).to redirect_to :root
      end
    end
  end

  describe 'PUT update' do
    let(:user) { FactoryGirl.create :user }
    let(:other_user) { FactoryGirl.create :user }

    context 'with valid params' do
      let(:params) do
        {
          email: Faker::Internet.email,
          first_name: Faker::Name.first_name,
          last_name: Faker::Name.last_name,
          password: 'P@ssw0rd'
        }
      end
      before do
        session[:user_id] = user.id
        put :update, id: user.id, user: params
      end

      it 'should redirect to user show' do
        expect(response).to redirect_to user_path(user)
      end
    end

    context 'with invalid params' do
      let(:params) do
        {
          email: '',
          first_name: Faker::Name.first_name,
          last_name: Faker::Name.last_name,
          password: 'P@ssw0rd'
        }
      end

      before do
        session[:user_id] = user.id
        put :update, id: user.id, user: params
      end

      it 'should be unprocessable' do
        expect(response).to be_unprocessable
      end

      it 'should render edit template' do
        expect(response).to render_template :edit
      end
    end
  end

end
