FactoryGirl.define do

  factory :person do
    name  { Faker::Name.name }
    # logo  { Faker::Company.logo }
  end

end
