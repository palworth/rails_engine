FactoryBot.define do
  factory :item do
    name { Faker::Name.unique.name }
    description { Faker::Restaurant.description }
    unit_price { 1.5 }
    merchant
  end
end
