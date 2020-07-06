class HacksController < ApplicationController
  before_action :set_hack, only: [:show, :edit, :update, :destroy]

  # GET /hacks
  # GET /hacks.json
  def index
    @hacks = Hack.all
  end

  # GET /hacks/1
  # GET /hacks/1.json
  def show
  end

  # GET /hacks/new
  def new
    @hack = Hack.new
  end

  # GET /hacks/1/edit
  def edit
  end

  # POST /hacks
  # POST /hacks.json
  def create
    @hack = Hack.new(hack_params)
    ing = Ingredient.find(hack_params[:ingredient_ids].reject!(&:blank?))
    hack_cat = HackCategory.find(hack_params[:hack_category_ids].reject!(&:blank?))

    IngredientHack.create(hack: @hack, ingredient: @ing, hack_category: hack_cat)


    respond_to do |format|
      if @hack.save
        format.html { redirect_to @hack, notice: 'Hack was successfully created.' }
        format.json { render :show, status: :created, location: @hack }
      else
        format.html { render :new }
        format.json { render json: @hack.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hacks/1
  # PATCH/PUT /hacks/1.json
  def update
    hack_params = params[:hack]

    # if params[:hack][:ingredients].present?
    #   ing = Ingredient.find(params[:hack][:ingredients])
    #     @hack.ingredient_hack_ids << ing
    #     @hack.save!


    # end
  # @ingredient = Ingredient.find(hack_params[:ingredient_ids].reject(&:blank?).pop)
  # @hack_category = HackCategory.find(hack_params[:hack_category_ids].reject(&:blank?).pop)
  # IngredientHack.create(ingredient: @ingredient, hack_category: @hack_category, hack: @hack)


    respond_to do |format|
      if @hack.update(params)
        format.html { redirect_to @hack, notice: 'Hack was successfully updated.' }
        format.json { render :show, status: :ok, location: @hack }
      else
        format.html { render :edit }
        format.json { render json: @hack.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hacks/1
  # DELETE /hacks/1.json
  def destroy
    @hack.destroy
    respond_to do |format|
      format.html { redirect_to hacks_url, notice: 'Hack was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hack
      @hack = Hack.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def hack_params
      params.require(:hack).permit(:title, :description, :image, :youtube_url, :publish, hack_category_ids: [], ingredient_ids: [])
    end
end
