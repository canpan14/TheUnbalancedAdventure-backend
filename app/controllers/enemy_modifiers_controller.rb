# frozen_string_literal: true

class EnemyModifiersController < ApplicationController
  before_action :set_enemy_modifier, only: %i[show update destroy]

  # GET /enemy_modifiers
  def index
    @enemy_modifiers = EnemyModifier.all

    render json: @enemy_modifiers
  end

  # GET /enemy_modifiers/1
  def show
    render json: @enemy_modifier
  end

  # POST /enemy_modifiers
  def create
    @enemy_modifier = EnemyModifier.new(enemy_modifier_params)

    if @enemy_modifier.save
      render json: @enemy_modifier, status: :created, location: @enemy_modifier
    else
      render json: @enemy_modifier.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /enemy_modifiers/1
  def update
    if @enemy_modifier.update(enemy_modifier_params)
      render json: @enemy_modifier
    else
      render json: @enemy_modifier.errors, status: :unprocessable_entity
    end
  end

  # DELETE /enemy_modifiers/1
  def destroy
    @enemy_modifier.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_enemy_modifier
    @enemy_modifier = EnemyModifier.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def enemy_modifier_params
    params.require(:enemy_modifier).permit(:text, :is_prefix, :move_to_adjust,
                                           :chance_adjust, :learning_curve,
                                           :attack_mult, :health_mult)
  end
end
