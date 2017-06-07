FactoryGirl.define do
  factory :user do
    name { FFaker::Name.name }
    email { FFaker::Internet.email }
    password { FFaker::Internet.password }
    address { FFaker::AddressBR.street_name }
    neighboorhood { FFaker::AddressBR.neighborhood }
    zipcode { FFaker::AddressBR.zip_code }
    city { FFaker::AddressBR.city }
    state ['SE', 'RJ', 'SP', 'AC'].sample
    country { FFaker::AddressBR.country }
    phone { FFaker::PhoneNumberBR.phone_number }
  end
end
