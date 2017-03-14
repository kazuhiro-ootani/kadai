require 'rails_helper'

RSpec.describe AccountSessionsController, type: :controller do

  describe 'GET #new' do
    it 'can access #new' do
     get :new
     expect(:response).to render_template :new
    end
  end

  describe 'POST #create' do
    it 'can success login' do
      @account = create(:account)
      @password = "testtest"
      post :create, params: { login: @account.login,
                              password: @password }
      expect(:response).to redirect_to tasks_path
    end

    it 'fail to login' do
      post :create, params: { account: attributes_for(:account) }
      expect(:response).to render_template :new
    end
  end

end
