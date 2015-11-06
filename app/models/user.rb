#
class User < ActiveRecord::Base
  include Authentication
  has_many :wishlists
  has_one :profile, autosave: true
  has_many :products, through: :wishlists
end
