require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  let(:user) do
    User.create(first_name: "billy", last_name: "bob", email: "bill@bob.com", password: "123")
  end

  let(:other_user) do
    User.create(first_name: "jow", last_name: "fadskds", email: "x@a.net", password: "abc")
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
        session[:current_user_id] = user.id        
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
          get :edit, id: other_user.id

          expect(response).to redirect_to login_path
        end
      end
    end
  end

  describe '#update' do
    context 'when not logged in' do
      before do
        put :update, id: user.id, user: { email: 'test@test.com' }
      end

      it 'should not be ok' do
        expect(response).to redirect_to login_path
      end
    end

    context 'when logged in' do
      
      before do
        session[:current_user_id] = user.id      
      end

      context 'with valid params' do
        let(:user_params) do
          { email: 'afa', first_name: 'xx', last_name: 'sd', password: 'asdsd' }
        end

        it 'should be ok' do
          put :update, id: user.id, user: user_params 

          expect(response).to redirect_to user_path(user)
        end
      end

      context 'with invalid params' do
        let(:user_params) do
          { email: '', first_name: 'xx', last_name: 'sd', password: 'asdsd' }
        end

        before do
          put :update, id: user.id, user: user_params 
        end

        it 'should render edit' do
          expect(response).to render_template :edit
        end

        it 'should return unprocessable' do
          expect(response).to be_unprocessable
        end
      end

      #context 'when current user' do
      #  put :update, id: user.id, user: { email: 'bob' }

#        it 'should not be ok' do
#          expect(response).to be_ok
#        end
#      end

      #context 'when not current user' do
      #
      #end
    end
  end  
end
