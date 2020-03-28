class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many  :categorys
  has_many  :posts
  has_many  :post_category

  validates :name, presence: true, length: { maximum: 10}
end