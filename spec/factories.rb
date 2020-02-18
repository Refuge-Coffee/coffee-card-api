FactoryBot.define do 
  factory :customer do
    first_name { "John" }
    last_name { "Doe" }
  end

  factory :card do 
    association :customer
    full_number { generate_random_card_number }
    balance_cents { 1000 }
  end

  factory :event do
    association :card
    amount_cents { 100 }
    action { ["spend", "reload"].sample }
  end
end

def generate_random_card_number
  full = ""
  16.times do
    full += rand(0..9).to_s 
  end
  return full
end