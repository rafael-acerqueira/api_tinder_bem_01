FactoryGirl.define do
  factory :company do
    name { FFaker::Name.name }
    email { FFaker::Internet.email }
    logo { FFaker::Avatar.image }
    address { FFaker::AddressBR.street_name }
    neighboorhood { FFaker::AddressBR.neighborhood }
    zipcode { FFaker::AddressBR.zip_code }
    city { FFaker::AddressBR.city }
    state ['SE', 'RJ', 'SP', 'AC'].sample
    country { FFaker::AddressBR.country }
    description { FFaker::Lorem.paragraph }
    phone { FFaker::PhoneNumberBR.phone_number }
    website {  FFaker::InternetSE.http_url }
    cause [1, 2, 3, 4, 5].sample
    user
  end
end
