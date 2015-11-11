#
class WishlistSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :product_id, :title, :comment
end
