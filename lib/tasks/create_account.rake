namespace :create_account do
  desc 'ユーザーアカウントを作る'
  task create: :environment do
    Account.create!(login: Faker::Name.name,
                    password:              "test",
                    password_confirmation: "test")
  end
end
