class HackCategoriesController < ApplicationController
  before_action :set_hack_category, only: [:show, :edit, :update, :destroy]

  # GET /hack_categories
  # GET /hack_categories.json
  def index
    @hack_categories = HackCategory.all
  end

  # GET /hack_categories/1
  # GET /hack_categories/1.json
  def show
  end

  # GET /hack_categories/new
  def new
    @hack_category = HackCategory.new
  end

  # GET /hack_categories/1/edit
  def edit
  end

  # POST /hack_categories
  # POST /hack_categories.json
  def create
    @hack_category = HackCategory.new(hack_category_params)

    respond_to do |format|
      if @hack_category.save
        format.html { redirect_to @hack_category, notice: 'Hack category was successfully created.' }
        format.json { render :show, status: :created, location: @hack_category }
      else
        format.html { render :new }
        format.json { render json: @hack_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hack_categories/1
  # PATCH/PUT /hack_categories/1.json
  def update
    respond_to do |format|
      if @hack_category.update(hack_category_params)
        format.html { redirect_to @hack_category, notice: 'Hack category was successfully updated.' }
        format.json { render :show, status: :ok, location: @hack_category }
      else
        format.html { render :edit }
        format.json { render json: @hack_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hack_categories/1
  # DELETE /hack_categories/1.json
  def destroy
    @hack_category.destroy
    respond_to do |format|
      format.html { redirect_to hack_categories_url, notice: 'Hack category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hack_category
      @hack_category = HackCategory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def hack_category_params
      params.require(:hack_category).permit(:name, :description)
    end
end
