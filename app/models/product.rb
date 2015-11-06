#
class Product < ActiveRecord::Base
  has_many :wishlists
  has_many :reviews
  has_many :users, through: :wishlists
end
