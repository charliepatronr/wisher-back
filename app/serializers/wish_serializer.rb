class WishSerializer < ActiveModel::Serializer

    attributes :id, :name, :description, :img, :price

    belongs_to :user
end 