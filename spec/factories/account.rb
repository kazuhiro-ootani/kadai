FactoryGirl.define do

  factory :account do
    login { Faker::Pokemon.name }
    password              "testtest"
    password_confirmation "testtest"
  end

end
