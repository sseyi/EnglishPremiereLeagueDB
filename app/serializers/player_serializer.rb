class PlayerSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :position, :age, :goals
end
