class BidSerializer < ActiveModel::Serializer
  attributes :id, :match_id, :team_id, :amount
end
