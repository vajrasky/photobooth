FactoryGirl.define do

  factory :person do
    name          { Faker::Name.name }
    sex           { ['cewek', 'cowok'].sample }
    division      'Engineering'
    email         { Faker::Internet.email }
    phone_number  { Faker::PhoneNumber.phone_number }
  end

end
