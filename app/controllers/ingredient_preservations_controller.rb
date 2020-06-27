class IngredientPreservationsController < ApplicationController
  before_action :set_ingredient_preservation, only: [:show, :edit, :update, :destroy]

  # GET /ingredient_preservations
  # GET /ingredient_preservations.json
  def index
    @ingredient_preservations = IngredientPreservation.all
  end

  # GET /ingredient_preservations/1
  # GET /ingredient_preservations/1.json
  def show
  end

  # GET /ingredient_preservations/new
  def new
    @ingredient_preservation = IngredientPreservation.new
  end

  # GET /ingredient_preservations/1/edit
  def edit
  end

  # POST /ingredient_preservations
  # POST /ingredient_preservations.json
  def create
    @ingredient_preservation = IngredientPreservation.new(ingredient_preservation_params)

    respond_to do |format|
      if @ingredient_preservation.save
        format.html { redirect_to @ingredient_preservation, notice: 'Ingredient preservation was successfully created.' }
        format.json { render :show, status: :created, location: @ingredient_preservation }
      else
        format.html { render :new }
        format.json { render json: @ingredient_preservation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ingredient_preservations/1
  # PATCH/PUT /ingredient_preservations/1.json
  def update
    respond_to do |format|
      if @ingredient_preservation.update(ingredient_preservation_params)
        format.html { redirect_to @ingredient_preservation, notice: 'Ingredient preservation was successfully updated.' }
        format.json { render :show, status: :ok, location: @ingredient_preservation }
      else
        format.html { render :edit }
        format.json { render json: @ingredient_preservation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ingredient_preservations/1
  # DELETE /ingredient_preservations/1.json
  def destroy
    @ingredient_preservation.destroy
    respond_to do |format|
      format.html { redirect_to ingredient_preservations_url, notice: 'Ingredient preservation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ingredient_preservation
      @ingredient_preservation = IngredientPreservation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ingredient_preservation_params
      params.require(:ingredient_preservation).permit(:days_added, :initial_state, :ingredient_id, :preservation_id)
    end
end
