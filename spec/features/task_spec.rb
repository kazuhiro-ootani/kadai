require 'rails_helper'
    @account = Account.new(login:"tone",password:"test",password_confirmation: "test")

feature 'ログイン' do
  scenario 'moge' do
  visit tasks_path
    within('form#session-form') do
      fill_in 'login', with: 'tone'
      fill_in 'password', with: 'test'
      click_button 'Login'
end
end

feature 'tasks pages' do
  given!(:apple) { create :task, title: 'Apple' }
  given!(:banana) { create :task, title: 'Banana' }
  given!(:orange) { create :task, title: 'Orange' }

  scenario 'Sort by drag-and-drop', js: true do
    visit tasks_path
    expect(page).to have_content 'Apple'
    expect(page).to have_content 'Banana'
    expect(page).to have_content 'Orange'
  end
end
end
