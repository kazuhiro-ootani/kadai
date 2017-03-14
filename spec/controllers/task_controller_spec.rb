require 'rails_helper'

RSpec.describe TasksController, type: :controller do

  before do
    @account = create(:account)
    login_user(@account)
  end

  after do
    logout_user
  end

  describe 'GET #new' do
    it 'can access #new' do
     get :new
     expect(:response).to render_template :new
    end
  end

  describe 'POST #create' do
    it 'can create task with title and content' do
      expect{
        post :create, params: { task: attributes_for(:task),
                                account_id: @account.id } }.to change(Task, :count).by(1)
    end

    it 'can not create task without title' do
      expect{
        post :create, params: { task: attributes_for(:task, title: ''),
                                account_id: @account.id } }.not_to change(Task, :count)
    end

    it 'can not create task without content' do
      expect{
        post :create, params: { task: attributes_for(:task, content: ''),
                                account_id: @account.id } }.not_to change(Task, :count)
    end
  end

  describe 'PATCH #update' do
    let(:task){ create(:task) }
      it 'can edit title' do
        patch :update, params: { id: task,
                                 task: attributes_for(:task, title: 'moge',id: task) }
        task.reload
        expect(task.title).to eq 'moge'
      end

      it 'can edit content' do
        patch :update, params: { id: task,
                                 task: attributes_for(:task, content: 'moge') }
        task.reload
        expect(task.content).to eq 'moge'
      end

      it 'shows flash message for edited task' do
        patch :update, params: { id: task,
                                 task: attributes_for(:task, content: 'moge') }
        expect(flash[:notice]).to include('タスクを編集しました')
       end

      it 'can finished task' do
        patch :update, params: { id: task,
                                 task: attributes_for(:task, finished: 'true') }
        task.reload
        expect(task.finished).to eq true
      end

      it 'shows flash message for completed task' do
        patch :update, params: { id: task,
                                 task: attributes_for(:task, finished: 'true') }
        expect(flash[:notice]).to include('タスクを完了しました')
      end
  end
end
