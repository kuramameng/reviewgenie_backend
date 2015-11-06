class Wishlist < ActiveRecord::Base
  belongs_to :user, inverse_of: :products
  belongs_to :product, inverse_of: :users
end
