require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  let(:user) do
    User.create(first_name: "billy", last_name: "bob", email: "bill@bob.com", password: "123")
  end

  describe '#show' do
    before do
      get :show, id: user.id
    end

    it 'should be ok' do
      expect(response).to be_ok
    end

    it 'should have correct user' do
      expect(user).to eq assigns[:user]
    end
  end

  describe '#edit' do
    context 'when not logged in' do
      before do
        get :edit, id: user.id
      end

      it 'should not be ok' do
        expect(response).to redirect_to login_path
      end
    end

    context 'when logged in' do
      before do
        post :login, email: user.email, password: user.password
      end

      describe 'as current user' do
        it 'should be ok' do
          expect(response).to be_ok
        end

        it 'should be able to view my edit path' do
          get :edit, id: user.id

          expect(user).to eq assigns[:user]
        end

        it 'should not be able to view not my edit path' do

        end
      end
    end

  end
end
