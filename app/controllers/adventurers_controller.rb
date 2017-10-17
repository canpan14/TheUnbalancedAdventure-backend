
# frozen_string_literal: true

class AdventurersController < ProtectedController
  before_action :set_adventurer, only: %i[show update destroy]
  # GET /adventurers
  def index
    @adventurers = Adventurer.all

    render json: @adventurers
  end

  # GET /adventurers/1
  def show
    render json: @adventurer
  end

  # POST /adventurers
  def create
    @adventurer = current_user.adventurers.build(adventurer_params)

    if @adventurer.save
      render json: @adventurer, status: :created, location: @adventurer
    else
      render json: @adventurer.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /adventurers/1
  def update
    if @adventurer.update(adventurer_params)
      render json: @adventurer
    else
      render json: @adventurer.errors, status: :unprocessable_entity
    end
  end

  # DELETE /adventurers/1
  def destroy
    @adventurer.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_adventurer
    @adventurer = current_user.adventurers.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def adventurer_params
    params.require(:adventurer).permit(:name, :user_id)
  end
end
