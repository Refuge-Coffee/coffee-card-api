FactoryBot.define do 
  factory :customer do
    first_name { "John" }
    last_name { "Doe" }
  end

  factory :card do 
    association :customer
    full_number { "0000111122223333" }
    balance_cents { 1000 }
  end

  factory :event do 
  end
end