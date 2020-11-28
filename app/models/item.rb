class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category, :condition, :ship_cost, :ship_from_area, :ship_day

  validates :name, :description, :price, presence: true
  validates :category_id, :condition_id, :ship_cost_id, :ship_from_area_id, :ship_day_id, numericality: { other_than: 1 }
  belongs_to :user
end
