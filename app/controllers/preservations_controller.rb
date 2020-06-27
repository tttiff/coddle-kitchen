class PreservationsController < ApplicationController
  before_action :set_preservation, only: [:show, :edit, :update, :destroy]

  # GET /preservations
  # GET /preservations.json
  def index
    @preservations = Preservation.all
  end

  # GET /preservations/1
  # GET /preservations/1.json
  def show
  end

  # GET /preservations/new
  def new
    @preservation = Preservation.new
  end

  # GET /preservations/1/edit
  def edit
  end

  # POST /preservations
  # POST /preservations.json
  def create
    @preservation = Preservation.new(preservation_params)

    respond_to do |format|
      if @preservation.save
        format.html { redirect_to @preservation, notice: 'Preservation was successfully created.' }
        format.json { render :show, status: :created, location: @preservation }
      else
        format.html { render :new }
        format.json { render json: @preservation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /preservations/1
  # PATCH/PUT /preservations/1.json
  def update
    respond_to do |format|
      if @preservation.update(preservation_params)
        format.html { redirect_to @preservation, notice: 'Preservation was successfully updated.' }
        format.json { render :show, status: :ok, location: @preservation }
      else
        format.html { render :edit }
        format.json { render json: @preservation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /preservations/1
  # DELETE /preservations/1.json
  def destroy
    @preservation.destroy
    respond_to do |format|
      format.html { redirect_to preservations_url, notice: 'Preservation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_preservation
      @preservation = Preservation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def preservation_params
      params.require(:preservation).permit(:method, :description)
    end
end
