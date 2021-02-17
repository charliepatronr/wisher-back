

class UserSerializer <  ActiveModel::Serializer

    attributes :id, :name, :age, :address

    has_many :friends
    has_many :inverse_friends

end 