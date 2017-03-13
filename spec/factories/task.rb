FactoryGirl.define do

  factory :task do
    title   { Faker::Pokemon.name }
    content { Faker::Beer.name }
  end

end
