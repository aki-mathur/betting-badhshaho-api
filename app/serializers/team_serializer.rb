class TeamSerializer < ActiveModel::Serializer
  attributes :id, :name, :short_name, :captain
end
