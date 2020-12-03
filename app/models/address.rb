class Address < ApplicationRecord
  belongs_to :order

  with_options presence: true do
    validates :postal_code, :city, :address, :phone_number, :order
  end
  validates :prefecture_id, numericality: { other_than: 1, message: 'Select' }
end
