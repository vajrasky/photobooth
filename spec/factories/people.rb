FactoryGirl.define do

  factory :person do
    portrait_base64 { 'iVBORw0KGgoAAAANSUhEUgAAABAAAAAQAQMAAAAlPW0iAAAABlBMVEUAAAD///+l2Z/dAAAAM0lEQVR4nGP4/5/h/1+G/58ZDrAz3D/McH8yw83NDDeNGe4Ug9C9zwz3gVLMDA/A6P9/AFGGFyjOXZtQAAAAAElFTkSuQmCC' }
    name            { Faker::Name.name }
    sex             { ['cewek', 'cowok'].sample }
    division        'Engineering'
    email           { Faker::Internet.email }
    phone_number    { Faker::PhoneNumber.phone_number }
  end

end
