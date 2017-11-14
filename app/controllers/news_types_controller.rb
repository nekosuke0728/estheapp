class NewsTypesController < ApplicationController
  before_action :set_news_type, only: [:show, :edit, :update, :destroy]

  # GET /news_types
  # GET /news_types.json
  def index
    @news_types = NewsType.all
  end

  # GET /news_types/1
  # GET /news_types/1.json
  def show
  end

  # GET /news_types/new
  def new
    @news_type = NewsType.new
  end

  # GET /news_types/1/edit
  def edit
  end

  # POST /news_types
  # POST /news_types.json
  def create
    @news_type = NewsType.new(news_type_params)

    respond_to do |format|
      if @news_type.save
        format.html { redirect_to @news_type, notice: 'News type was successfully created.' }
        format.json { render :show, status: :created, location: @news_type }
      else
        format.html { render :new }
        format.json { render json: @news_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /news_types/1
  # PATCH/PUT /news_types/1.json
  def update
    respond_to do |format|
      if @news_type.update(news_type_params)
        format.html { redirect_to @news_type, notice: 'News type was successfully updated.' }
        format.json { render :show, status: :ok, location: @news_type }
      else
        format.html { render :edit }
        format.json { render json: @news_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /news_types/1
  # DELETE /news_types/1.json
  def destroy
    @news_type.destroy
    respond_to do |format|
      format.html { redirect_to news_types_url, notice: 'News type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_news_type
      @news_type = NewsType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def news_type_params
      params.require(:news_type).permit(:name)
    end
end
