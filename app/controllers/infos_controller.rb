class InfosController < ApplicationController
  before_action :set_info, only: [:update]
  before_action :authenticate_user!

  def index
    @infos = Info.all.where(team: params[:team_id])

    render json: @infos[0]
  end

  # PATCH/PUT /infos/1
  def update
    if @info.update(info_params)
      render json: @info
    else
      render json: @info.errors, status: :unprocessable_entity
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_info
      @info = Info.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def info_params
      params.require(:info).permit(:belongs_to, :voice_chat, :git, :documentation, :design, :project_tracker, :team_rules)
    end
end
