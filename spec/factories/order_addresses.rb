FactoryBot.define do
  factory :order_address do
    postal_code   {'123-1234'}
    prefecture_id { 2 }
    city          {'東京市'}
    address       {'1-1'}
    building_name {'ファーストステージ'}
    phone_number  {'0201111222'}
  end
end