# frozen_string_literal: true

class EnemiesController < OpenReadController
  before_action :set_enemy, only: %i[show]

  # GET /enemies
  def index
    @enemies = Enemy.all

    render json: @enemies
  end

  # GET /enemies/1
  def show
    render json: @enemy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_enemy
    @enemy = Enemy.find(params[:id])
  end
end
