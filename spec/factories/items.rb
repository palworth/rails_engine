FactoryBot.define do
  factory :item do
    name { "MYstring" }
    description { "MyString" }
    unit_price { 1.5 }
    # association :merchant
  end
end
