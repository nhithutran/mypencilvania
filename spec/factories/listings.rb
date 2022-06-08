FactoryBot.define do
  factory :listing do
    title { "MyString" }
    description { nil }
    condition { 1 }
    price { 1 }
    sold { false }
    user { "" }
    categories { nil }
  end
end
