class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  with_options presence: true do
    validates :nickname
    PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]+\z/i.freeze
    validates :password, format: {with: PASSWORD_REGEX, message:'半角英数字の両方を含めて設定してください' }
    with_options format: { with: /\A[ぁ-んァ-ン一-龥]+\z/, message:'全角文字を使用してください' } do
      validates :last_name
      validates :first_name 
    end
    with_options format: { with: /\A[ァ-ン]+\z/, message: '全角カタカナを使用してください'} do
      validates :last_name_kana
      validates :first_name_kana
    end
    validates :birth_date
  end

end
