# frozen_string_literal: true

class TeamsController < OpenReadController
  before_action :set_team, only: %i[update destroy]

  # GET /teams
  def index
    @teams = Team.all

    render json: @teams
  end

  # GET /teams/1
  def show
    render json: @team
  end

  # POST /teams
  def create
    @team = current_user.teams.build(team_params)

    if @team.save
      render json: @team, status: :created, location: @team
    else
      render json: @team.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /teams/1
  def update
    if @team.update(team_params)
      render json: @team
    else
      render json: @team.errors, status: :unprocessable_entity
    end
  end

  # DELETE /teams/1
  def destroy
    @team.destroy

    head :no_content
  end
  # Use callbacks to share common setup or constraints between actions.

  def set_team
    @team = current_user.teams.new(team_params)
  end

  # Only allow a trusted parameter "white list" through.
  def team_params
    params.require(:team).permit(:name, :standings, :location)
  end

  private :set_team, :team_params
end
