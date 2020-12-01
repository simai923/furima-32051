class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category, :condition, :ship_cost, :ship_from_area, :ship_day
  belongs_to :user
  has_one_attached :image
  with_options presence: true do
    validates :image, :name, :description
    validates :price, numericality: { only_integer: true, message: 'Half-width number' }
  end
  validates :price, numericality: { greater_than_or_equal_to: 300, less_than_or_equal_to: 9_999_999, message: 'is out of setting range' }
  validates :category_id, :condition_id, :ship_cost_id, :ship_from_area_id, :ship_day_id, numericality: { other_than: 1, message: 'Select' }
end
