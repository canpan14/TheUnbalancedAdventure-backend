# frozen_string_literal: true

class EnemyModifiersController < OpenReadController
  before_action :set_enemy_modifier, only: %i[show]

  # GET /enemy_modifiers
  def index
    @enemy_modifiers = EnemyModifier.all

    render json: @enemy_modifiers
  end

  # GET /enemy_modifiers/1
  def show
    render json: @enemy_modifier
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_enemy_modifier
    @enemy_modifier = EnemyModifier.find(params[:id])
  end
end
