# frozen_string_literal: true

class LevelsController < OpenReadController
  before_action :set_level, only: %i[show]

  # GET /levels
  def index
    @levels = Level.all

    render json: @levels
  end

  # GET /levels/1
  def show
    render json: @level
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_level
    @level = Level.find(params[:id])
  end
end
