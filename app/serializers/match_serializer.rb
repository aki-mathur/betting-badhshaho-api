class MatchSerializer < ActiveModel::Serializer
  attributes :id, :name, :venue, :date, :winner_team_id, :winner_team_name, :teams

  def teams
    teams = []
    teams << {id: object.team1.id, name: object.team1.name}
    teams << {id: object.team2.id, name: object.team2.name}
    return teams
  end

  def winner_team_name
    object.winner.present? ? object.winner.name : nil
  end

end
