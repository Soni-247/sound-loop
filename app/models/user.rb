class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :listings
  has_many :purchases, class_name: 'Transaction', foreign_key: :buyer_id
  has_many :sales, class_name: 'Transaction', foreign_key: :seller_id

  has_many :purchased_listings, through: :purchases, source: :listing
  has_many :sold_listings, through: :sales, source: :listing
end
