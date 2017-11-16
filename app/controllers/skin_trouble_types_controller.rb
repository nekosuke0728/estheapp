class SkinTroubleTypesController < ApplicationController
  before_action :set_skin_trouble_type, only: [:show, :edit, :update, :destroy]

  # GET /skin_trouble_types
  # GET /skin_trouble_types.json
  def index
    @skin_trouble_types = SkinTroubleType.all
  end

  # GET /skin_trouble_types/1
  # GET /skin_trouble_types/1.json
  def show
  end

  # GET /skin_trouble_types/new
  def new
    @skin_trouble_type = SkinTroubleType.new
  end

  # GET /skin_trouble_types/1/edit
  def edit
  end

  # POST /skin_trouble_types
  # POST /skin_trouble_types.json
  def create
    @skin_trouble_type = SkinTroubleType.new(skin_trouble_type_params)

    respond_to do |format|
      if @skin_trouble_type.save
        format.html { redirect_to @skin_trouble_type, notice: 'Skin trouble type was successfully created.' }
        format.json { render :show, status: :created, location: @skin_trouble_type }
      else
        format.html { render :new }
        format.json { render json: @skin_trouble_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /skin_trouble_types/1
  # PATCH/PUT /skin_trouble_types/1.json
  def update
    respond_to do |format|
      if @skin_trouble_type.update(skin_trouble_type_params)
        format.html { redirect_to @skin_trouble_type, notice: 'Skin trouble type was successfully updated.' }
        format.json { render :show, status: :ok, location: @skin_trouble_type }
      else
        format.html { render :edit }
        format.json { render json: @skin_trouble_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /skin_trouble_types/1
  # DELETE /skin_trouble_types/1.json
  def destroy
    @skin_trouble_type.destroy
    respond_to do |format|
      format.html { redirect_to skin_trouble_types_url, notice: 'Skin trouble type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_skin_trouble_type
      @skin_trouble_type = SkinTroubleType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def skin_trouble_type_params
      params.require(:skin_trouble_type).permit(:name)
    end
end
