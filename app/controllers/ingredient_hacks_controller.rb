class IngredientHacksController < ApplicationController
  before_action :set_ingredient_hack, only: [:show, :edit, :update, :destroy]

  # GET /ingredient_hacks
  # GET /ingredient_hacks.json
  def index
    @ingredient_hacks = IngredientHack.all
  end

  # GET /ingredient_hacks/1
  # GET /ingredient_hacks/1.json
  def show
  end

  # GET /ingredient_hacks/new
  def new
    @ingredient_hack = IngredientHack.new
  end

  # GET /ingredient_hacks/1/edit
  def edit
  end

  # POST /ingredient_hacks
  # POST /ingredient_hacks.json
  def create
    @ingredient_hack = IngredientHack.new(ingredient_hack_params)

    respond_to do |format|
      if @ingredient_hack.save
        format.html { redirect_to @ingredient_hack, notice: 'Ingredient hack was successfully created.' }
        format.json { render :show, status: :created, location: @ingredient_hack }
      else
        format.html { render :new }
        format.json { render json: @ingredient_hack.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ingredient_hacks/1
  # PATCH/PUT /ingredient_hacks/1.json
  def update
    respond_to do |format|
      if @ingredient_hack.update(ingredient_hack_params)
        format.html { redirect_to @ingredient_hack, notice: 'Ingredient hack was successfully updated.' }
        format.json { render :show, status: :ok, location: @ingredient_hack }
      else
        format.html { render :edit }
        format.json { render json: @ingredient_hack.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ingredient_hacks/1
  # DELETE /ingredient_hacks/1.json
  def destroy
    @ingredient_hack.destroy
    respond_to do |format|
      format.html { redirect_to ingredient_hacks_url, notice: 'Ingredient hack was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ingredient_hack
      @ingredient_hack = IngredientHack.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ingredient_hack_params
      params.require(:ingredient_hack).permit(:hack_id, :ingredient_preservation_id, :hack_category_id)
    end
end
