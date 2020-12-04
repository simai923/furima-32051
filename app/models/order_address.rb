class OrderAddress
  include ActiveModel::Model
  attr_accessor :user_id, :item_id, :postal_code, :prefecture_id, :city, :address, :building_name, :phone_number, :order

  with_options presence: true do
    validates :postal_code, :city, :address, :phone_number, :order
  end
  validates :prefecture_id, numericality: { other_than: 1, message: 'Select' }

  def save
    user = User.find(params[:id])
    item = User.find(params[:id])
    order = Order.create(user_id: user.id, item_id: item.id)
    Address.create(postal_code: postal_code, prefecture_id: prefecture_id, city: city, address: address, building_name: building_name, order_id: order.id)
  end
end