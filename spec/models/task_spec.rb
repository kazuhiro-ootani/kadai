require 'rails_helper'

describe Task do
  describe '#create' do
    it "is valid with a titile, content" do
      task = build(:task)
      expect(task).to be_valid
    end

    it "is invalid without a title "do
      task = build(:task, title: nil)
      task.valid?
      expect(task.errors[:title]).to include("を入力してください")
    end

    it "is invalid without a content" do
      task = build(:task, content: nil)
      task.valid?
      expect(task.errors[:content]).to include("を入力してください")
    end

  end
end
