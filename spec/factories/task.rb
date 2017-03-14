FactoryGirl.define do

  factory :task do
    title   { Faker::Pokemon.name }
    content { Faker::Beer.name }
    finished  "0"
    priority  "1"
  end

end
