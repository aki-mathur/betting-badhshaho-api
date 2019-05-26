class Match < ApplicationRecord
  belongs_to :team1, class_name: "Team", foreign_key: "team1_id"
  belongs_to :team2, class_name: "Team", foreign_key: "team2_id"
  belongs_to :winner, class_name: "Team", foreign_key: "winner_team_id", optional: true
end
