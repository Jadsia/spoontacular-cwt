require 'rails_helper'

RSpec.describe RecipesController, type: :controller do
  describe "GET #index" do
    before do
      get :index
    end
    it "returns http success" do
      expect(response).to have_http_status(:success)
    end
  end

  describe 'Authentication' do
    it 'should allow users to log in' do
      user = FactoryBot.create(:user, password: 'password')
      get new_sessions_url
      fill_in 'email', with: user.email
      fill_in 'password', with: 'password'
      click_button 'Login'

      expect(response).to redirect_to new_user_session_path
    end
  end


end
