class TeamSerializer < ActiveModel::Serializer
  attributes :id, :name, :standings, :location, :players
end
