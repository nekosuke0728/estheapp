class EstheMenusController < ApplicationController
  before_action :authenticate_staff!
  before_action :set_esthe_menu, only: [:show, :edit, :update, :destroy]

  # GET /esthe_menus
  # GET /esthe_menus.json
  def index
    @esthe_menus = EstheMenu.all
  end

  # GET /esthe_menus/1
  # GET /esthe_menus/1.json
  def show
  end

  # GET /esthe_menus/new
  def new
    @esthe_menu = EstheMenu.new
  end

  # GET /esthe_menus/1/edit
  def edit
  end

  # POST /esthe_menus
  # POST /esthe_menus.json
  def create
    @esthe_menu = EstheMenu.new(esthe_menu_params)

    respond_to do |format|
      if @esthe_menu.save
        format.html { redirect_to @esthe_menu, notice: 'Esthe menu was successfully created.' }
        format.json { render :show, status: :created, location: @esthe_menu }
      else
        format.html { render :new }
        format.json { render json: @esthe_menu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /esthe_menus/1
  # PATCH/PUT /esthe_menus/1.json
  def update
    respond_to do |format|
      if @esthe_menu.update(esthe_menu_params)
        format.html { redirect_to @esthe_menu, notice: 'Esthe menu was successfully updated.' }
        format.json { render :show, status: :ok, location: @esthe_menu }
      else
        format.html { render :edit }
        format.json { render json: @esthe_menu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /esthe_menus/1
  # DELETE /esthe_menus/1.json
  def destroy
    @esthe_menu.destroy
    respond_to do |format|
      format.html { redirect_to esthe_menus_url, notice: 'Esthe menu was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_esthe_menu
      @esthe_menu = EstheMenu.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def esthe_menu_params
      params.require(:esthe_menu).permit(:name, :time_frame, :description, :price)
    end
end
