class MatchesController < ApplicationController
  before_action :set_match, only: [:show, :update, :destroy, :update_winner]

  # GET /matches
  def index
    @matches = Match.all

    render json: @matches
  end

  # GET /matches/1
  def show
    render json: @match
  end

  # POST /matches
  def create
    @match = Match.new(match_params.merge!(created_by_id: current_user, updated_by_id: current_user))
    if @match.save
      render json: @match, status: :created, location: @match
    else
      render json: @match.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /matches/1
  def update
    if @match.update(match_params)
      render json: @match
    else
      render json: @match.errors, status: :unprocessable_entity
    end
  end

  # DELETE /matches/1
  def destroy
    @match.destroy
  end

  # PATCH /matches/1
  def update_winner
    @match.update_result(match_params[:winner_team_id])
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_match
      @match = Match.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def match_params
      params.require(:match).permit(:name, :team1_id, :team2_id, :date, :venue, :winner_team_id)
    end
end
