class AccountSessionsController < ApplicationController
  skip_before_action :require_login, except: [:destory]

  def new
    @account = Account.new
  end

  def create
    if @account = login(params[:login], params[:password])
      redirect_back_or_to(tasks_path, notice: 'ログインしました')
    else
      flash.now[:alert] = 'ログイン失敗'
      render action: 'new'
    end
  end

  def destroy
    logout
    redirect_to(new_account_session_path, notice: 'ログアウトしました')
  end
end
