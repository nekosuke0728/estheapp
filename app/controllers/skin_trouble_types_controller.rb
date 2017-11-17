class SkinTroubleTypesController < ApplicationController
  before_action :set_skin_trouble_type, only: [:show, :edit, :update, :destroy]

  def index
    @skin_trouble_types = SkinTroubleType.all
    @skin_trouble_type = SkinTroubleType.new
  end

  def show
  end

  def edit
  end

  def create
    @skin_trouble_type = SkinTroubleType.new(skin_trouble_type_params)
    if @skin_trouble_type.save
      redirect_to skin_trouble_types_path, notice: '肌トラブルタイプは正常に作成されました'
    else
      render :new
    end
  end

  def update
    if @skin_trouble_type.update(skin_trouble_type_params)
      redirect_to skin_trouble_types_path, notice: '肌トラブルタイプは正常に更新されました'
    else
      render :edit
    end
  end

  def destroy
    @skin_trouble_type.destroy
    redirect_to skin_trouble_types_path, notice: '肌トラブルタイプは正常に削除されました'
  end

  private

    def set_skin_trouble_type
      @skin_trouble_type = SkinTroubleType.find(params[:id])
    end

    def skin_trouble_type_params
      params.require(:skin_trouble_type).permit(:name)
    end

end
