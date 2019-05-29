class BidController < ApplicationController
  before_action :set_bid, only: [:show]

  # GET /bides
  def index
    @bides = Bid.all

    render json: @bides
  end

  # GET /bides/1
  def show
    render json: @bid
  end

  # POST /bides
  def create
    @bid = Bid.new(bid_params.merge!(user_id: current_user.id, created_by_id: current_user.id, updated_by_id: current_user.id))
    if @bid.save
      render json: @bid, status: :created, location: @bid
    else
      render json: @bid.errors, status: :unprocessable_entity
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_bid
    @bid = Bid.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def bid_params
    params.require(:bid).permit(:team_id, :match_id, :amount)
  end
end
