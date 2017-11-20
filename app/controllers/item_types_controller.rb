class ItemTypesController < ApplicationController
  before_action :authenticate_staff!
  before_action :set_item_type, only: [:show, :edit, :update, :destroy]

  def index
    # @item_types = ItemType.where(:category_id => params[:category_id])

    if params[:category_id].nil?
      @item_types = ItemType.all
    else
      @item_types = ItemType.where(:category_id => params[:category_id])
    end
  end

  def show
  end

  def new
    @item_type = ItemType.new
  end

  def edit
  end

  def create
    @item_type = ItemType.new(item_type_params)
    if @item_type.save
      redirect_to item_types_path, notice: 'アイテムタイプは正常に作成されました'
    else
      render :new
    end
  end

  def update
    if @item_type.update(item_type_params)
      redirect_to item_types_path, notice: 'アイテムタイプは正常に更新されました'
    else
      render :edit
    end
  end

  def destroy
    @item_type.destroy
    redirect_to item_types_path, notice: 'アイテムタイプは正常に削除されました'
  end

  private

    def set_item_type
      @item_type = ItemType.find(params[:id])
    end

    def item_type_params
      params.require(:item_type).permit(:category_id, :name)
    end

end
