require 'rails_helper'

describe Account do
  describe '#create' do
    it "is valid with a login, password, password_confirmation" do
      account = build(:account)
      expect(account).to be_valid
    end

    it "is invalid without a login " do
      account = build(:account, login: nil)
      account.valid?
      expect(account.errors[:login]).to include("を入力してください")
    end

    it "is invalid with duplicate login" do
      account = create(:account)
      another_account = build(:account, login: account.login)
      another_account.valid?
      expect(another_account.errors[:login][0]).to include("はすでに存在します")
    end

    it "is invalid without a password" do
      account = build(:account, password: nil)
      account.valid?
      expect(account.errors[:password]).to include("を入力してください")
    end

    it "is invalid without a password_confirmation although with a password" do
      account = build(:account, password_confirmation: nil)
      account.valid?
      expect(account.errors[:password_confirmation]).to include("を入力してください")
    end

  end
end
