class Bid < ApplicationRecord
  belongs_to :match
  belongs_to :team
  belongs_to :user
  validates :amount, presence: true


  def update_bid_result(match_id, winner_team_id)
      bids = Bid.where(match_id: match_id)
      bids.each do |bid|
        if bid.team_id == winner_team_id
          bid.update_attribute(is_winner: true)
        else
          bid.update_attribute(is_winner: false)
        end
      end
      calculate_amount(match_id, team_id)
  end

  private

  def calculate_amount(match_id, team_id)
    total_bid_count = Bid.where(match_id: match_id).count
    winner_count = Bid.where(match_id: match_id, is_winner: true).count
    loser_count = total_bid_count - winner_count
    total_winner_amount = Bid.sum(:amount).where(match_id: match_id, is_winner: true)
    total_losing_amount = Bid.sum(:amount).where(match_id: match_id, is_winner: false)

    Bid.where(match_id: match_id).each do |bid|
      if bid.team_id == winner_team_id
        winning_amount = bid.amount + ((bid.amount * total_losing_amount) / total_winner_amount)
        bid.update_attribute(winning_amount: winning_amount)
      else
        bid.update_attribute(winning_amount: -bid.amount)
      end
    end
  end

end
