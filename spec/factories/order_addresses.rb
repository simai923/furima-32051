FactoryBot.define do
  factory :order_address do
    token         { 'tok_abcdefghijk00000000000000000' }
    postal_code   { '123-1234' }
    prefecture_id { 2 }
    city          { '東京市' }
    address       { '1-1' }
    building_name { 'ファーストステージ' }
    phone_number  { '0201111222' }
    user_id       { 1 }
    item_id       { 2 }
  end
end
