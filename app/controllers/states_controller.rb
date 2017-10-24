# frozen_string_literal: true

class StatesController < ProtectedController
  before_action :set_state, only: %i[show update destroy]

  # GET /states
  def index
    @states = State.all

    render json: @states
  end

  # GET /states/1
  def show
    render json: @state
  end

  # PATCH/PUT /states/1
  def update
    if @state.update(state_params)
      render json: @state
    else
      render json: @state.errors, status: :unprocessable_entity
    end
  end

  # DELETE /states/1
  def destroy
    @state.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_state
    @state = current_user.states.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def state_params
    params.require(:state).permit(:adventurer_id, :a_health, :a_attack, :in_fight,
                                  :e_name, :e_level, :e_exp, :e_attack, :e_health,
                                  :e_rock_chance, :e_paper_chance, :e_scissor_chance, :e_learning_curve)
  end
end
