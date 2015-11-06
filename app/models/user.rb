#
class User < ActiveRecord::Base
  include Authentication
  has_many :wishlists
  has_one :profile
  has_many :products, through: :wishlists
end
