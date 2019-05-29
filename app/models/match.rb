class Match < ApplicationRecord
  belongs_to :team1, class_name: "Team", foreign_key: "team1_id"
  belongs_to :team2, class_name: "Team", foreign_key: "team2_id"
  belongs_to :winner, class_name: "Team", foreign_key: "winner_team_id", optional: true
  has_many :bids
  validates :name, :date, presence: true


  def self.update_result(winner_team_id)
    self.update_attribute(winner_team_id: winner_team_id)
    update_bid_result
  end

  private

  def update_bid_result
    Bid.update_bid_result(self.id,self.winner_team_id)
  end

end
