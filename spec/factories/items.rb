FactoryBot.define do
  factory :item do
    name              { 'テスト' }
    description       { Faker::Lorem.sentence }
    category_id       { 2 }
    condition_id      { 3 }
    ship_cost_id      { 4 }
    ship_from_area_id { 5 }
    ship_day_id       { 2 }
    price             { 3456 }

    association :user

    after(:build) do |item|
      item.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end
